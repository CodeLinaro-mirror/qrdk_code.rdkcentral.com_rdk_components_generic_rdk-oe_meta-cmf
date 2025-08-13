SRC_URI:remove = "git://git.denx.de/u-boot.git"
SRC_URI:remove = "git://git.denx.de/u-boot.git;branch=master"
SRC_URI += "git://gitlab.com/u-boot/u-boot.git;protocol=https;branch=master;name=gitlab"

SRCREV_gitlab = "${AUTOREV}"
SRCREV_FORMAT = "denx_gitlab"
