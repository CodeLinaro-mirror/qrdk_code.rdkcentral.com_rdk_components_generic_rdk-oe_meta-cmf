BBMASK .= "|meta-rdk/recipes-extended/jquery/"

MAINTAINER = "RDK CMF Team <support@rdkcentral.com>"

PREFERRED_VERSION_breakpad = "git"
PREFERRED_PROVIDER_curl ?= "curl"

# Revert meta-rdk/+/73763 RDKTV-17032: Build failure due to compiler out of memory
# It is causing race condition issues in build
PARALLEL_MAKE_remove = " -l ${@int(os.sysconf(os.sysconf_names['SC_NPROCESSORS_ONLN'])) * 150/100}"

# gmp 4.2.1 is the last version released as LGPLv2
# nettle 2.7.1 is the last version released as LGPLv2
# gnutls 3.3.x is the last branch which supports nettle 2.7.1
PREFERRED_VERSION_gmp = "4.2.1"
PREFERRED_VERSION_nettle = "2.7.1"
PREFERRED_VERSION_gnutls = "3.3.%"
