DEPENDS:remove_ipclient = "virtual/media-utils"
DEPENDS:remove_ipclient = "audiocapturemgr"

RDEPENDS:${PN}:remove_ipclient = "virtual/media-utils"
RDEPENDS:${PN}:remove_ipclient = "audiocapturemgr"

EXTRA_OECONF:remove_ipclient = "${ENABLE_ACM}"
EXTRA_OECONF:remove_ipclient = "${ENABLE_AC_RMF}"

CFLAGS:remove_ipclient = " ${@bb.utils.contains('RDEPENDS:${PN}', 'virtual/media-utils', ' -I${STAGING_INCDIR}/media-utils/audioCapture', ' ', d)}"

ENABLE_SAFEC = "--enable-safec=${@bb.utils.contains('DISTRO_FEATURES', 'safec','yes', 'no', d)}"
EXTRA_OECONF += " ${ENABLE_SAFEC}"

do_install:append:ipclient() {
    #remove audiocapturemgr service entry for ipclient from btmgr.service
    bbnote "Modifying btmgr.service"
    sed -i 's/audiocapturemgr.service/ /g' ${D}${systemd_system_unitdir}/btmgr.service
}
