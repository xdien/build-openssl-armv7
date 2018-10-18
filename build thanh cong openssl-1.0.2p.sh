#build thanh cong openssl-1.0.2p android-ndk17
export MACHINE=armv7
export ARCH=arm
export CROSS_COMPILE="arm-linux-androideabi-"
export ANDROID_SYSROOT="$ANDROID_NDK_ROOT/platforms/android-14/arch-arm"
export SYSROOT="$ANDROID_SYSROOT"
export NDK_SYSROOT="$ANDROID_SYSROOT"
export ANDROID_NDK_SYSROOT="$ANDROID_SYSROOT"
export ANDROID_API=android-14

export ANDROID_DEV="$ANDROID_NDK_ROOT/platforms/android-14/arch-arm/usr"
export HOSTCC=gcc
export ANDROID_TOOLCHAIN="$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin"
export PATH="$ANDROID_TOOLCHAIN":"$PATH"

./Configure shared no-ssl2 no-ssl3 no-comp no-hw no-engine android -fPIE -D__ANDROID_API__=android-14 -I$ANDROID_NDK_ROOT/sysroot/usr/include -I$ANDROID_NDK_ROOT/sysroot/usr/include/arm-linux-androideabi -B$ANDROID_NDK_ROOT/platforms/android-14/arch-arm64/usr/lib

make clean
make CALC_VERSIONS="SHLIB_COMPAT=; SHLIB_SOVER=" depend
make CALC_VERSIONS="SHLIB_COMPAT=; SHLIB_SOVER=" all
