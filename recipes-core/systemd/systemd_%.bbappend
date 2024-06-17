RDEPENDS_${PN} += " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor', '', d)}"
RDEPENDS_${PN}-analyze += " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor', '', d)}"

RDEPENDS_${PN}_remove_camera = "apparmor"
RDEPENDS_${PN}-analyze_remove_camera = "apparmor"

DEPENDS_remove_camera = "apparmor"
