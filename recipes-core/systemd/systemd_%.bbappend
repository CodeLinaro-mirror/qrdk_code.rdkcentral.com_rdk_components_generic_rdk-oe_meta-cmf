RDEPENDS_${PN} += " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor', '', d)}"
RDEPENDS_${PN}-analyze += " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor', '', d)}"

RDEPENDS_${PN}:remove_camera = "apparmor"
RDEPENDS_${PN}-analyze:remove_camera = "apparmor"

RDEPENDS_${PN}:remove_broadband = "apparmor"
RDEPENDS_${PN}-analyze:remove_broadband = "apparmor"

RDEPENDS_${PN}:remove_extender = "apparmor"
RDEPENDS_${PN}-analyze:remove_extender = "apparmor"

DEPENDS:remove_camera = "apparmor"
DEPENDS:remove_broadband = "apparmor"
DEPENDS:remove_extender = "apparmor"
