FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:remove = "git://github.com/Comcast/trower-base64.git;branch=main"
SRC_URI += "git://github.com/Comcast/trower-base64.git;protocol=https;branch=main"

SRC_URI:append:aarch64 = " file://0001-64-bit-compile-fix.patch "
