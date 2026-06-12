FILESEXTRAPATHS:prepend:= "${THISDIR}/files:"

SRC_URI:remove = "git://github.com/xmidt-org/wdmp-c.git"
SRC_URI += "git://github.com/xmidt-org/wdmp-c.git;protocol=https;branch=master"
SRC_URI += "file://wdmp-c.patch"
