FILESEXTRAPATHS:prepend := "${THISDIR}/busybox:"

SRC_URI:append_client = " \
   file://nc.cfg \
   "

SRC_URI:remove_broadband = "file://nc.cfg"
SRC_URI:append_broadband = " \
   file://nc-n.cfg \
   "
