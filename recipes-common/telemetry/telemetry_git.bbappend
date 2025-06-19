inherit coverity

DEPENDS_remove = "mountutils"
DEPENDS_remove = "rdkconfig"
DEPENDS_remove = "rdkcertconfig"

EXTRA_OECONF_remove = "--enable-mountutils"
EXTRA_OECONF_remove = "--enable-rdkcertselector"
