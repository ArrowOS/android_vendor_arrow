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

function gerritpush() {
    local GERRIT_URL=review.arrowos.net
    local MANIFEST_PATH="$ANDROID_BUILD_TOP/manifest/arrow.xml"
    local PREFIX="ArrowOS/"
    local branch=arrow-13.1
    local ref=for
    local options="%"

    while [ "$#" -gt 0 ]; do
      case "$1" in
        -t)
            options+="topic=$2,"; shift
            ;;
        -c)
            options+="l=Code-Review$2,"; shift
            ;;
        -v)
            options+="l=Verified$2,"; shift
            ;;
        -p)
            options+="private,"
            ;;
        -w)
            options+="wip,"
            ;;
        -d)
            ref=heads
            ;;
        -b)
            branch="$2"; shift
            ;;
      esac
      shift
    done
    if ! git rev-parse --is-inside-work-tree &> /dev/null; then
        echo "fatal: not a git repository"
        return 1
    fi
    local repo=$(git rev-parse --show-toplevel | sed "s|$ANDROID_BUILD_TOP/||g")
    local name=$(grep "path=\"$repo\"" $MANIFEST_PATH | sed -e 's/.*name="//' -e 's/".*//')
    if [[ -z $name ]]; then
        name=$(grep "name=\"$repo\"" $MANIFEST_PATH | sed -e 's/.*name="//' -e 's/".*//')
    fi
    if [[ -z $name ]]; then
        echo "fatal: repo is not in arrow manifest"
        return 1
    fi
    if [[ -z $ARROW_GERRIT_USER ]]; then
      printf 'Enter gerrit username: '
      read -r ARROW_GERRIT_USER
    fi
    export ARROW_GERRIT_USER
    git push "ssh://$ARROW_GERRIT_USER@$GERRIT_URL:29418/$PREFIX$name" "HEAD:refs/$ref/$branch$options"
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
