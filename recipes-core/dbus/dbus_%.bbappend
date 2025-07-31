FILESEXTRAPATHS:prepend := "${THISDIR}/dbus:"

RDEPENDS_${PN} += " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor', '', d)}"

RDEPENDS_${PN}:remove_camera = "apparmor"
RDEPENDS_${PN}:remove_broadband = "apparmor"
RDEPENDS_${PN}:remove_extender = "apparmor"
