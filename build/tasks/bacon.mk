#
# Copyright (C) 2018-2023 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

ARROW_TARGET_PACKAGE := $(PRODUCT_OUT)/$(ARROW_VERSION).zip

.PHONY: bacon
bacon: otapackage
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(ARROW_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(ARROW_TARGET_PACKAGE) > $(ARROW_TARGET_PACKAGE).md5sum
	echo -e "========================================="
	echo -e ""
	echo -e "                 \033[1;34m''\033[0m                  "
	echo -e "           \`\`\`\`\`\033[1;34m.oy.\033[0m\`\`\`\`\`\`\`          "
	echo -e "        \`\`\`\`\`\`\`\033[1;34m:dMMh.\033[0m\`\`\`\`\`\`\`\`        "
	echo -e "      \`\`\`\`\`\`\`\033[1;34m.sMMMMMy.\033[0m\`\`\`\`\`\`\`\`\`      "
	echo -e "    \`\`\`\`\`\`\`\033[1;34m./mMMMMMMMy.\033[0m\`\`\`\`\`\`\`\`\`\`    "
	echo -e "   \`\`\`\`\`\`\`\033[1;34m-yMMMMMMMMMMy.\033[0m\`\`\`\`\`\`\`\`\`\`   "
	echo -e "   \`\`\`\`\`\033[1;34m./mMMNNNMMMMMMMy.\033[0m\`\`\`\`\`\`\`\`\`\`  "
	echo -e "  \`\`\`\`\`\033[1;34m-ymmhMMMMMMhNMMMMs.\033[0m\`\`\`\`\`\`\`\`\`  "
	echo -e "  \`\`\`\`\033[1;34m./M..\033[0m\`\`\`\`\`\`\`\033[1;34m.-odMMMs.\033[0m\`\`\`\`\`\`\`\`  "
	echo -e "  \`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\033[1;34m./hMMs.\033[0m\`\`\`\`\`\`\`  "
	echo -e "   \`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\033[1;34m./dMs.\033[0m\`\`\`\`\`\`  "
	echo -e "    \`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\033[1;34m.+ms\033[0m\`\`\`\`\`  "
	echo -e "     \`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\033[1;34m-yo\033[0m\`\`\`   "
	echo -e "      \`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\033[1;34m...d\033[0m\`    "
	echo -e "        \`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\` \`\` \033[1;34m.   \033[0m"
	echo -e "           \`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`          "
	echo -e ""
	echo -e "                ArrowOS"
	echo -e ""
	echo -e "========================================="
	echo -e ""
	@echo "**Package completed**: $(ARROW_TARGET_PACKAGE)"
