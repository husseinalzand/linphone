# Install script for directory: /Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/husseinalzandvirtual/linphone-iphone/liblinphone-sdk/arm64-apple-darwin.ios")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/linphone/coreapi/liblinphone.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblinphone.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblinphone.a")
    execute_process(COMMAND "/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/linphone/arm64-apple-darwin-ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblinphone.a")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/linphone" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/account_creator.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/buffer.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/call_log.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/call_params.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/content.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/event.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/linphonecore.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/linphonecore_utils.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/linphonefriend.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/linphonepresence.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/linphone_proxy_config.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/linphone_tunnel.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/lpc2xml.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/lpconfig.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/sipsetup.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/xml2lpc.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/coreapi/xmlrpc.h"
    )
endif()

