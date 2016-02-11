#!/bin/sh

if [ -n "" ]
then
	export AS=""
fi
export CC="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-clang  -arch armv7 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.0.sdk"
export CXX="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-clang++  -arch armv7 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.0.sdk"
export OBJC="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-clang  -arch armv7 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.0.sdk"
export LD="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-ld"
export AR="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-ar"
export RANLIB="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-ranlib"
export STRIP="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-strip"
export NM="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-nm"

export ASFLAGS=" "
export CPPFLAGS=" "
export CFLAGS="-O3 -DNDEBUG -arch armv7 -miphoneos-version-min=6.0 -DTARGET_OS_IPHONE=1 -D__IOS -fms-extensions -Dasm=__asm -mcpu=cortex-a8 "
export CXXFLAGS="-O3 -DNDEBUG -arch armv7 -miphoneos-version-min=6.0 -DTARGET_OS_IPHONE=1 -D__IOS -fms-extensions -Dasm=__asm -mcpu=cortex-a8 "
export OBJCFLAGS="-O3 -DNDEBUG "
export LDFLAGS=" -arch armv7 -miphoneos-version-min=6.0 -DTARGET_OS_IPHONE=1 -D__IOS -fms-extensions "

export PKG_CONFIG="/usr/local/bin/pkg-config"
export PKG_CONFIG_PATH=""
export PKG_CONFIG_LIBDIR="/Users/husseinalzandvirtual/linphone-iphone/liblinphone-sdk/armv7-apple-darwin.ios/lib/pkgconfig"

cd /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7//Build/ffmpeg
make V=0 RANLIB="$RANLIB" 2>&1 >> /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/EP_ffmpeg.log
