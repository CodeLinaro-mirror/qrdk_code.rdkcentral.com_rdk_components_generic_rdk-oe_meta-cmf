FILESEXTRAPATHS:prepend := "${THISDIR}/dbus:"

RDEPENDS:${PN} += " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor', '', d)}"

RDEPENDS:${PN}:remove_camera = "apparmor"
RDEPENDS:${PN}:remove_broadband = "apparmor"
RDEPENDS:${PN}:remove_extender = "apparmor"
