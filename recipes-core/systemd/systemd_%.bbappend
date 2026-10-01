RDEPENDS:${PN} += " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor', '', d)}"
RDEPENDS:${PN}-analyze += " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor', '', d)}"

RDEPENDS:${PN}:remove_camera = "apparmor"
RDEPENDS:${PN}-analyze:remove_camera = "apparmor"

#RDEPENDS:${PN}:remove:broadband = "apparmor"
#RDEPENDS:${PN}-analyze:remove:broadband = "apparmor"

#RDEPENDS:${PN}:remove:extender = "apparmor"
#RDEPENDS:${PN}-analyze:remove:extender = "apparmor"

DEPENDS:remove_camera = "apparmor"
#DEPENDS:remove:broadband = "apparmor"
#DEPENDS:remove:extender = "apparmor"
