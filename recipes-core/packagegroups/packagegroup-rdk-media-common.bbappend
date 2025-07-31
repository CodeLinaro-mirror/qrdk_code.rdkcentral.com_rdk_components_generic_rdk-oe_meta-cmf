RDEPENDS_packagegroup-rdk-media-common:remove = "virtual/ea-games-provider"

RDEPENDS_packagegroup-rdk-media-common:append = " rfc"
RDEPENDS_packagegroup-rdk-media-common:append = " rdm"
RDEPENDS_packagegroup-rdk-media-common:append = " memstress"
RDEPENDS_packagegroup-rdk-media-common:append = " rdkat"
RDEPENDS_packagegroup-rdk-media-common:append = " cpuprocanalyzer"
RDEPENDS_packagegroup-rdk-media-common:append = " libunpriv"
RDEPENDS_packagegroup-rdk-media-common:append = " ctrlm-main"
RDEPENDS_packagegroup-rdk-media-common:append = " xdialserver"
RDEPENDS_packagegroup-rdk-media-common:append = " dibbler-client"
RDEPENDS_packagegroup-rdk-media-common:append = " gst-external-plugin"
RDEPENDS_packagegroup-rdk-media-common:append = "\
   ${@bb.utils.contains("DISTRO_FEATURES", "tinyrdk", " smartmon","",d)}\
   "

RDEPENDS_packagegroup-rdk-media-common:append = "\
   ${@bb.utils.contains("DISTRO_FEATURES", "rialto_servermanager_sim", "\
   rialto-servermanager-sim \
   ","",d)} \
"

RDEPENDS_packagegroup-rdk-media-common:append = "\
   ${@bb.utils.contains("DISTRO_FEATURES", "blercudaemon", "asbluetoothrcu","",d)} \
   ${@bb.utils.contains("DISTRO_FEATURES", "rdkbrowser2", "rdkbrowser2","",d)} \
   "

RDEPENDS_packagegroup-rdk-media-common:remove_ipclient = "virtual/media-utils"

# smartmon does not build in voice build due to boost issues.
RDEPENDS_packagegroup-rdk-media-common:remove_voice = " smartmon"
