DEPENDS_append = " wdmp-c"

DEPENDS_remove = "mountutils"
DEPENDS_remove = "rdkcertconfig"
EXTRA_OECONF_remove = "--enable-mountutils=yes"
EXTRA_OECONF_remove = "--enable-rdkcertselector=yes"

CFLAGS_append = " -Wno-unused-variable"
