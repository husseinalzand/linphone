#!/bin/sh

if [ -n "" ]
then
	export AS=""
fi
export CC="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/cmake/Autotools/arm64-apple-darwin-clang  -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.0.sdk"
export CXX="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/cmake/Autotools/arm64-apple-darwin-clang++  -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.0.sdk"
export OBJC="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/cmake/Autotools/arm64-apple-darwin-clang  -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.0.sdk"
export LD="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/cmake/Autotools/arm64-apple-darwin-ld"
export AR="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/cmake/Autotools/arm64-apple-darwin-ar"
export RANLIB="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/cmake/Autotools/arm64-apple-darwin-ranlib"
export STRIP="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/cmake/Autotools/arm64-apple-darwin-strip"
export NM="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/cmake/Autotools/arm64-apple-darwin-nm"

export ASFLAGS=" "
export CPPFLAGS=" "
export CFLAGS=" "
export CXXFLAGS=" "
export OBJCFLAGS=" "
export LDFLAGS=" "

export PKG_CONFIG="/usr/local/bin/pkg-config"
export PKG_CONFIG_PATH=""
export PKG_CONFIG_LIBDIR="/Users/husseinalzandvirtual/linphone-iphone/liblinphone-sdk/arm64-apple-darwin.ios/lib/pkgconfig"

cd /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64//Build/vpx

if [ ! -f vpx_config.h ]
then
	 
	LD=$CC /Users/husseinalzandvirtual/linphone-iphone/submodules/externals/libvpx/configure  "--prefix=/Users/husseinalzandvirtual/linphone-iphone/liblinphone-sdk/arm64-apple-darwin.ios" "--target=arm64-darwin-gcc" "--enable-static" "--disable-shared" "--enable-error-concealment" "--enable-multithread" "--enable-realtime-only" "--enable-spatial-resampling" "--enable-vp8" "--disable-vp9" "--enable-libs" "--disable-install-docs" "--disable-debug-libs" "--disable-examples" "--disable-unit-tests" "--as=yasm" 
fi
