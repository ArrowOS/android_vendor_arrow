#!/bin/bash
# A simple script to compile all our overlays and pack them into a flashable zip

source $ANDROID_BUILD_TOP/build/envsetup.sh
cur_dir=`pwd`
flashable_zip_template="$ANDROID_BUILD_TOP/vendor/arrow/build/tools/overlays_zip_template"
overlays_path_top="$ANDROID_BUILD_TOP/vendor/arrow/overlay/themes/"
overlays_path_temp="$ANDROID_BUILD_TOP/overlays_temp"
overlays_zip_name="arrow_overlays.zip"
cd $ANDROID_BUILD_TOP
cd $overlays_path_top

echo "cooking overlays"
rm -rf $(get_build_var PRODUCT_OUT)/system/product/overlay
mma
if [ $? -eq 0 ]; then
    echo "overlays cooked!!"
    echo "Making a flashable zip"
    if [ ! -d $overlays_path_temp ]; then
        mkdir -p $overlays_path_temp
    else
        cd $overlays_path_temp
        rm -rf $overlays_path_temp/*
    fi
    cp -r $flashable_zip_template/* $overlays_path_temp/
    mkdir -p $overlays_path_temp/system/system/product/overlay
    cp -r $(get_build_var PRODUCT_OUT)/system/product/overlay/* $overlays_path_temp/system/system/product/overlay/
    cd $overlays_path_temp
    zip -r $overlays_zip_name . > /dev/null
    mv $overlays_zip_name $ANDROID_BUILD_TOP/
    rm -rf $overlays_path_temp
    echo "DONE!"
    echo "zip available at : $ANDROID_BUILD_TOP/$overlays_zip_name"
    cd $cur_dir
else
    echo "cooking overlays failed/aborted!"
    cd $cur_dir
fi
