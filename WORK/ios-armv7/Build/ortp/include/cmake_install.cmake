# Install script for directory: /Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ortp" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include/ortp/b64.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include/ortp/event.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include/ortp/logging.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include/ortp/ortp.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include/ortp/payloadtype.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include/ortp/port.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include/ortp/rtcp.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include/ortp/rtp.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include/ortp/rtpprofile.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include/ortp/rtpsession.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include/ortp/rtpsignaltable.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include/ortp/sessionset.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include/ortp/str_utils.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/oRTP/include/ortp/telephonyevents.h"
    )
endif()

