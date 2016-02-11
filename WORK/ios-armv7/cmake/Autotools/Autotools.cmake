############################################################################
# Autotools.cmake.in
# Copyright (C) 2014  Belledonne Communications, Grenoble France
#
############################################################################
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
#
############################################################################

set(OSX_FLAGS "")
if(NOT "armv7" STREQUAL "")
	set(OSX_FLAGS "${OSX_FLAGS} -arch armv7")
endif()
if(NOT "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.0.sdk" STREQUAL "")
	set(OSX_FLAGS "${OSX_FLAGS} -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS8.0.sdk")
endif()

if("Clang" STREQUAL "GNU")
	string(REGEX REPLACE "gcc$" "as" AS_COMPILER "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-clang")
	set(AUTOTOOLS_AS_COMPILER ${AS_COMPILER} CACHE PATH "Initial cache" FORCE)
endif()
set(AUTOTOOLS_C_COMPILER "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-clang ${OSX_FLAGS}" CACHE PATH "Initial cache" FORCE)
set(AUTOTOOLS_CXX_COMPILER "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-clang++ ${OSX_FLAGS}" CACHE PATH "Initial cache" FORCE)
set(AUTOTOOLS_OBJC_COMPILER "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-clang ${OSX_FLAGS}" CACHE PATH "Initial cache" FORCE)
set(AUTOTOOLS_LINKER "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-ld" CACHE PATH "Initial cache" FORCE)
set(AUTOTOOLS_AR "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-ar" CACHE PATH "Initial cache" FORCE)
set(AUTOTOOLS_RANLIB "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-ranlib" CACHE PATH "Initial cache" FORCE)
set(AUTOTOOLS_STRIP "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-strip" CACHE PATH "Initial cache" FORCE)
set(AUTOTOOLS_NM "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/cmake/Autotools/armv7-apple-darwin-nm" CACHE PATH "Initial cache" FORCE)

set(AUTOTOOLS_C_FLAGS_DEBUG "-g" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_C_FLAGS_MINSIZEREL "-Os -DNDEBUG" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_C_FLAGS_RELEASE "-O3 -DNDEBUG" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_C_FLAGS_RELWITHDEBINFO "-O2 -g -DNDEBUG" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_C_FLAGS "" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_CXX_FLAGS_DEBUG "-g" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_CXX_FLAGS_MINSIZEREL "-Os -DNDEBUG" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_CXX_FLAGS_RELEASE "-O3 -DNDEBUG" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_CXX_FLAGS_RELWITHDEBINFO "-O2 -g -DNDEBUG" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_CXX_FLAGS "" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_OBJC_FLAGS_DEBUG "-g" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_OBJC_FLAGS_MINSIZEREL "-Os -DNDEBUG" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_OBJC_FLAGS_RELEASE "-O3 -DNDEBUG" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_OBJC_FLAGS_RELWITHDEBINFO "-O2 -g -DNDEBUG" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_OBJC_FLAGS "" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_LINKER_FLAGS_DEBUG "" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_LINKER_FLAGS_MINSIZEREL "" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_LINKER_FLAGS_RELEASE "" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_LINKER_FLAGS_RELWITHDEBINFO "" CACHE STRING "Initial cache" FORCE)
set(AUTOTOOLS_LINKER_FLAGS "" CACHE STRING "Initial cache" FORCE)

