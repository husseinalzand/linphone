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
export CFLAGS="-O3 -DNDEBUG -arch arm64 -miphoneos-version-min=6.0 -DTARGET_OS_IPHONE=1 -D__IOS -fms-extensions -Dasm=__asm "
export CXXFLAGS="-O3 -DNDEBUG -arch arm64 -miphoneos-version-min=6.0 -DTARGET_OS_IPHONE=1 -D__IOS -fms-extensions -Dasm=__asm "
export OBJCFLAGS="-O3 -DNDEBUG "
export LDFLAGS=" -arch arm64 -miphoneos-version-min=6.0 -DTARGET_OS_IPHONE=1 -D__IOS -fms-extensions "

export PKG_CONFIG="/usr/local/bin/pkg-config"
export PKG_CONFIG_PATH=""
export PKG_CONFIG_LIBDIR="/Users/husseinalzandvirtual/linphone-iphone/liblinphone-sdk/arm64-apple-darwin.ios/lib/pkgconfig"

cd /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64//Build/ffmpeg

if [ ! -f config.h ]
then
	 
	 /Users/husseinalzandvirtual/linphone-iphone/submodules/externals/ffmpeg/configure  "--prefix=/Users/husseinalzandvirtual/linphone-iphone/liblinphone-sdk/arm64-apple-darwin.ios" "--arch=arm64" "--target-os=darwin" "--enable-static" "--disable-shared" "--disable-zlib" "--disable-bzlib" "--disable-mmx" "--disable-ffplay" "--disable-ffprobe" "--disable-ffserver" "--disable-avdevice" "--disable-avfilter" "--disable-network" "--disable-avformat" "--disable-everything" "--enable-decoder=mjpeg" "--enable-encoder=mjpeg" "--disable-vda" "--disable-vaapi" "--disable-vdpau" "--extra-cflags=-w" "--enable-decoder=h263" "--enable-encoder=h263" "--enable-encoder=h263p" "--enable-decoder=mpeg4" "--enable-encoder=mpeg4" "--enable-decoder=h264" "--disable-iconv" "--enable-cross-compile" "--cross-prefix=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/" "--sysroot=" "--ar=$AR" "--cc=$CC" "--nm=$NM" "--extra-cflags=$CFLAGS" "--extra-ldflags=$LDFLAGS" 
fi
