FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI:append:aarch64 = " file://remove_log_error.patch "
SRC_URI:append = " file://0001-libsnmp-Fix-the-build-against-OpenSSL-3.0.patch "
SRC_URI:remove = "file://double_free.patch"
