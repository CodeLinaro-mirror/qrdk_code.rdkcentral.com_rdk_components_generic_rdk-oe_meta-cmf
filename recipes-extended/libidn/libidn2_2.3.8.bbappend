DEPENDS:remove = "libunistring"
PACKAGES := "${PN}"
PACKAGE_DEBUG_SPLIT_STYLE="debug-without-srcpkg"
INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
INHIBIT_PACKAGE_STRIP = "1"

do_install:append() {
    rm -rf ${D}${mandir}
    rm -rf ${D}${infodir}
    rm -rf ${D}${datadir}/locale
}
FILES:${PN} += "/usr/share \
    usr/include \
    ${bindir} \
    ${libdir} \
"
INSANE_SKIP:${PN} += "debug-files dev-so"
