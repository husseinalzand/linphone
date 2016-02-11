#!/bin/sh

if [ -n "" ]
then
	export AS=""
fi
export CC="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-x86_64/cmake/Autotools/x86_64-apple-darwin-clang  -arch x86_64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator8.0.sdk"
export CXX="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-x86_64/cmake/Autotools/x86_64-apple-darwin-clang++  -arch x86_64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator8.0.sdk"
export OBJC="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-x86_64/cmake/Autotools/x86_64-apple-darwin-clang  -arch x86_64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator8.0.sdk"
export LD="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-x86_64/cmake/Autotools/x86_64-apple-darwin-ld"
export AR="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-x86_64/cmake/Autotools/x86_64-apple-darwin-ar"
export RANLIB="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-x86_64/cmake/Autotools/x86_64-apple-darwin-ranlib"
export STRIP="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-x86_64/cmake/Autotools/x86_64-apple-darwin-strip"
export NM="/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-x86_64/cmake/Autotools/x86_64-apple-darwin-nm"

export ASFLAGS=" "
export CPPFLAGS=" "
export CFLAGS="-O3 -DNDEBUG -arch x86_64 -mios-simulator-version-min=6.0 -DTARGET_OS_IPHONE=1 -D__IOS -fms-extensions -Dasm=__asm "
export CXXFLAGS="-O3 -DNDEBUG -arch x86_64 -mios-simulator-version-min=6.0 -DTARGET_OS_IPHONE=1 -D__IOS -fms-extensions -Dasm=__asm "
export OBJCFLAGS="-O3 -DNDEBUG "
export LDFLAGS=" -arch x86_64 -mios-simulator-version-min=6.0 -DTARGET_OS_IPHONE=1 -D__IOS -fms-extensions "

export PKG_CONFIG="/usr/local/bin/pkg-config"
export PKG_CONFIG_PATH=""
export PKG_CONFIG_LIBDIR="/Users/husseinalzandvirtual/linphone-iphone/liblinphone-sdk/x86_64-apple-darwin.ios/lib/pkgconfig"

cd /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-x86_64//Build/ffmpeg
make V=0 RANLIB="$RANLIB" install 2>&1 >> /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-x86_64/cmake/EP_ffmpeg.log
