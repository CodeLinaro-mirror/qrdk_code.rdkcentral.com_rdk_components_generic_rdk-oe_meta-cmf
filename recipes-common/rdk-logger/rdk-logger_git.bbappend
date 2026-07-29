DEPENDS:append_camera = " iarmbus"

inherit pkgconfig
CFLAGS:append = " \
    -Wno-error=implicit-function-declaration \
    -Wno-error=incompatible-pointer-types \
"
