# ====================================================================================
# PICO-INFONESPLUS build script with default configuration
# Builds the emulator for use with the
# MURMULATOR platform
# https://t.me/ZX_MURMULATOR
# ====================================================================================
cd `dirname $0` || exit 1
. ./checksdk.sh
if [ -d build ] ; then
	rm -rf build || exit 1
fi
mkdir build || exit 1
cd build || exit 1
cmake -DCMAKE_BUILD_TYPE=RELEASENODEBUG -DINFONES_PLUS_HW_CONFIG=4 ..
make -j 4
cd ..
. ./removetmpsdk.sh
