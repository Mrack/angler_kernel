mkdir out
export ARCH=arm64
export SUBARCH=arm64
export PATH=/home/mrack/aosp8.1/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin:$PATH
export CROSS_COMPILE=aarch64-linux-android-
export CROSS_COMPILE_ARM32=arm-linux-androideabi-
#make -j8 O=out angler_defconfig
make -j8 O=out ARCH=arm64
