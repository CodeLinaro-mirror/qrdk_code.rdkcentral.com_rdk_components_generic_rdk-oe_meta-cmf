RDEPENDS:packagegroup-tdk:append = "\
  sysstat \
  ${@bb.utils.contains('DISTRO_FEATURES', 'rdk-profiling', ' packagegroup-rdk-profiling', '', d)} \
  "