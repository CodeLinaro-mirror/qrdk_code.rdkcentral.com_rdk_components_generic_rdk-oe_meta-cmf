SRC_URI_remove_broadband = "${@bb.utils.contains('DISTRO_FEATURES', 'em_extender', 'file://Bluetooth_service_dependency_broadband.patch', '',d)}"

PACKAGES =+ "${PN}-bluetoothd ${PN}-mpris-proxy"

FILES_${PN}-bluetoothd = "${libdir}/bluez5/bluetooth/bluetoothd"
FILES_${PN}-mpris-proxy = "${bindir}/mpris-proxy"
