FILESEXTRAPATHS:prepend := "${THISDIR}/busybox:"

SRC_URI:append:client = " \
   file://nc.cfg \
   "

SRC_URI:remove:broadband = "file://nc.cfg"
SRC_URI:append:broadband = " \
   file://nc-n.cfg \
   "
