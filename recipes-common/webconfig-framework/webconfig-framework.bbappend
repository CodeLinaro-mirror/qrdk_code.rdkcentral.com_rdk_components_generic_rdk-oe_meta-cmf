SRC_URI:remove = "${CMF_GITHUB_ROOT}/WebconfigFramework;protocol=https;nobranch=1"
SRC_URI += "${CMF_GIT_ROOT}/rdk/components/generic/WebconfigFramework;protocol=${CMF_GIT_PROTOCOL};branch=${CMF_GIT_BRANCH}"

inherit coverity
