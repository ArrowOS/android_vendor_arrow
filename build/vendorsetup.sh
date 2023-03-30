# Additional ArrowOS functions

function mka() {
    m "$@"
}

function brunch() {
    if lunch arrow_$1-userdebug; then
        mka bacon
    else
        echo "Lunch failed!"
        return 1
    fi
    return $?
}

function repopick() {
    T=$(gettop)
    $T/vendor/arrow/build/tools/repopick.py $@
}

if [ -z ${CCACHE_EXEC} ]; then
    ccache_path=$(which ccache)
    if [ ! -z "$ccache_path" ]; then
	export USE_CCACHE=1
        export CCACHE_EXEC="$ccache_path"
        if [ -z ${CCACHE_DIR} ]; then
            export CCACHE_DIR=${HOME}/.ccache
        fi
        $ccache_path -o compression=true
	echo -e "\e[1mccache enabled and \e[32m\e[4mCCACHE_EXEC\e[0m \e[1mhas been set to : \e[4m$ccache_path\e[0m"
    else
        echo -e "\e[31m\e[1mccache not found/installed!\e[0m"
    fi
fi

export ANDROID_BUILD_TOP=$(gettop)
