inherit coverity
PV = "${RDK_RELEASE}+git${SRCPV}"

do_install_prepend () {
    mkdir -p ${S}/libunpriv/source
    cp -f ${S}/source/process-capabilities_rdkb.json ${S}/libunpriv/source/
}
