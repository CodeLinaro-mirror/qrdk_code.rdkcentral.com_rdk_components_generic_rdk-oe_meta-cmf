SRC_URI:remove:broadband = "file://Bluetooth_service_dependency_broadband.patch"
SRC_URI:remove:wrynose = "file://0001-bluetooth_service_in_generic.patch"

PACKAGES =+ "${PN}-bluetoothd ${PN}-mpris-proxy"

FILES:${PN}-bluetoothd = "${libdir}/bluez5/bluetooth/bluetoothd"
FILES:${PN}-mpris-proxy = "${bindir}/mpris-proxy"
