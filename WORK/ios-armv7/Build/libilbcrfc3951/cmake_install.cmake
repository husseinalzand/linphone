# Install script for directory: /Users/husseinalzandvirtual/linphone-iphone/submodules/libilbc-rfc3951

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/husseinalzandvirtual/linphone-iphone/liblinphone-sdk/armv7-apple-darwin.ios")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/Build/libilbcrfc3951/libilbcrfc3951.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libilbcrfc3951.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libilbcrfc3951.a")
    execute_process(COMMAND "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/Build/libilbcrfc3951/armv7-apple-darwin-ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libilbcrfc3951.a")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ilbc" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/Build/libilbcrfc3951/iLBC_decode.h"
    "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/Build/libilbcrfc3951/iLBC_define.h"
    "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/Build/libilbcrfc3951/iLBC_encode.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/IlbcRfc3951/IlbcRfc3951Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/IlbcRfc3951/IlbcRfc3951Targets.cmake"
         "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/Build/libilbcrfc3951/CMakeFiles/Export/lib/cmake/IlbcRfc3951/IlbcRfc3951Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/IlbcRfc3951/IlbcRfc3951Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/IlbcRfc3951/IlbcRfc3951Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/IlbcRfc3951" TYPE FILE FILES "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/Build/libilbcrfc3951/CMakeFiles/Export/lib/cmake/IlbcRfc3951/IlbcRfc3951Targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/IlbcRfc3951" TYPE FILE FILES "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/Build/libilbcrfc3951/CMakeFiles/Export/lib/cmake/IlbcRfc3951/IlbcRfc3951Targets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/IlbcRfc3951" TYPE FILE FILES
    "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/Build/libilbcrfc3951/IlbcRfc3951Config.cmake"
    "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/Build/libilbcrfc3951/IlbcRfc3951ConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-armv7/Build/libilbcrfc3951/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
