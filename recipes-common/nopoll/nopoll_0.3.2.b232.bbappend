FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:remove = "git://github.com/Comcast/nopoll.git;branch=nopoll_yocto"
SRC_URI += "git://github.com/Comcast/nopoll.git;protocol=https;branch=nopoll_yocto"

SRC_URI += "file://0004_memory-leak-fix.patch"
