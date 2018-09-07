for combo in $(curl -s https://raw.githubusercontent.com/ArrowOS/android_vendor_arrow/arrow-9.x/arrow.devices | sed -e 's/#.*$//' | awk '{printf "arrow_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done
