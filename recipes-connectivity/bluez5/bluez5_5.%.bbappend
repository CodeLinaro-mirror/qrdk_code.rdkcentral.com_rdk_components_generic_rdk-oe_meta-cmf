SRC_URI:remove_broadband = "file://Bluetooth_service_dependency_broadband.patch"

PACKAGES =+ "${PN}-bluetoothd ${PN}-mpris-proxy"

FILES:${PN}-bluetoothd = "${libdir}/bluez5/bluetooth/bluetoothd"
FILES:${PN}-mpris-proxy = "${bindir}/mpris-proxy"
