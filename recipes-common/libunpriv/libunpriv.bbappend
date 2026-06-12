inherit coverity
PV = "${RDK_RELEASE}+git${SRCPV}"

do_install:prepend () {
    mkdir -p ${S}/libunpriv/source
    cp -f ${S}/source/process-capabilities_broadband.json ${S}/libunpriv/source/process-capabilities_rdkb.json
}
