SRC_URI:remove = "git://github.com/Comcast/libparodus.git"
SRC_URI += "git://github.com/Comcast/libparodus.git;protocol=https;branch=master"
do_configure:append:wrynose() {
 sed -i 's/msgpackc/msgpack-c/g' ${S}/src/CMakeLists.txt
}
