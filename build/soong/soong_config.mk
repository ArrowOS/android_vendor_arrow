# Insert new variables inside the Lineage structure
arrow_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '"Arrow": {'; \
	echo '},'; \
	echo '') > $(SOONG_VARIABLES_TMP)
