DEPENDS:append = " wdmp-c"

DEPENDS:remove = "mountutils"
DEPENDS:remove = "rdkcertconfig"
EXTRA_OECONF:remove = "--enable-mountutils=yes"
EXTRA_OECONF:remove = "--enable-rdkcertselector=yes"

CFLAGS:append = " -Wno-unused-variable"
