RDEPENDS:packagegroup-rdk-media-common:remove = "virtual/ea-games-provider"

RDEPENDS:packagegroup-rdk-media-common:append = " rfc"
RDEPENDS:packagegroup-rdk-media-common:append = " rdm"
RDEPENDS:packagegroup-rdk-media-common:append = " memstress"
RDEPENDS:packagegroup-rdk-media-common:append = " rdkat"
RDEPENDS:packagegroup-rdk-media-common:append = " cpuprocanalyzer"
RDEPENDS:packagegroup-rdk-media-common:append = " libunpriv"
RDEPENDS:packagegroup-rdk-media-common:append = " ctrlm-main"
RDEPENDS:packagegroup-rdk-media-common:append = " xdialserver"
RDEPENDS:packagegroup-rdk-media-common:append = " dibbler-client"
RDEPENDS:packagegroup-rdk-media-common:append = " gst-external-plugin"
RDEPENDS:packagegroup-rdk-media-common:append = "\
   ${@bb.utils.contains("DISTRO_FEATURES", "tinyrdk", " smartmon","",d)}\
   "

RDEPENDS:packagegroup-rdk-media-common:append = "\
   ${@bb.utils.contains("DISTRO_FEATURES", "rialto_servermanager_sim", "\
   rialto-servermanager-sim \
   ","",d)} \
"

RDEPENDS:packagegroup-rdk-media-common:append = "\
   ${@bb.utils.contains("DISTRO_FEATURES", "blercudaemon", "asbluetoothrcu","",d)} \
   ${@bb.utils.contains("DISTRO_FEATURES", "rdkbrowser2", "rdkbrowser2","",d)} \
   "

RDEPENDS:packagegroup-rdk-media-common:remove_ipclient = "virtual/media-utils"

# smartmon does not build in voice build due to boost issues.
RDEPENDS:packagegroup-rdk-media-common:remove_voice = " smartmon"
