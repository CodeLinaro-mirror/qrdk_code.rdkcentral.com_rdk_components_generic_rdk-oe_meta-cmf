RDEPENDS:${PN} += " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor', '', d)}"
RDEPENDS:${PN}-analyze += " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor', '', d)}"

RDEPENDS:${PN}:remove_camera = "apparmor"
RDEPENDS:${PN}-analyze:remove_camera = "apparmor"

RDEPENDS:${PN}:remove_broadband = "apparmor"
RDEPENDS:${PN}-analyze:remove_broadband = "apparmor"

RDEPENDS:${PN}:remove_extender = "apparmor"
RDEPENDS:${PN}-analyze:remove_extender = "apparmor"

DEPENDS:remove_camera = "apparmor"
DEPENDS:remove_broadband = "apparmor"
DEPENDS:remove_extender = "apparmor"
