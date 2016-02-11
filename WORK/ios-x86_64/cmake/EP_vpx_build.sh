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
export CFLAGS=" "
export CXXFLAGS=" "
export OBJCFLAGS=" "
export LDFLAGS=" "

export PKG_CONFIG="/usr/local/bin/pkg-config"
export PKG_CONFIG_PATH=""
export PKG_CONFIG_LIBDIR="/Users/husseinalzandvirtual/linphone-iphone/liblinphone-sdk/x86_64-apple-darwin.ios/lib/pkgconfig"

cd /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-x86_64//Build/vpx
make V=0  2>&1 >> /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-x86_64/cmake/EP_vpx.log
