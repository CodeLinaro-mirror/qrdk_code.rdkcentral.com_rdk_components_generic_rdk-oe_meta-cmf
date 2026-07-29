FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:remove = "git://github.com/Comcast/trower-base64.git;branch=main"
SRC_URI += "git://github.com/Comcast/trower-base64.git;protocol=https;branch=main"

SRC_URI:append:aarch64 = " file://0001-64-bit-compile-fix.patch "
#CFLAGS:append = " -O2"

TARGET_CFLAGS:append = " -O2"
EXTRA_OECMAKE = '-DCMAKE_POLICY_VERSION_MINIMUM=3.5'
EXTRA_OECONF += " --disable-tests"
CFLAGS:append = " -U_FORTIFY_SOURCE"

DEPENDS += "cunit"
