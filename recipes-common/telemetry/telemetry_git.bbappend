inherit coverity

DEPENDS:remove = "mountutils"
DEPENDS:remove = "rdkconfig"

EXTRA_OECONF:remove = "--enable-mountutils"
EXTRA_OECONF:remove = "--enable-rdkcertselector"
