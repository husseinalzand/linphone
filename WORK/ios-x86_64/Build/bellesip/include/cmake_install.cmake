# Install script for directory: /Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/husseinalzandvirtual/linphone-iphone/liblinphone-sdk/x86_64-apple-darwin.ios")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/belle-sip" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/auth-helper.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/belle-sdp.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/belle-sip.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/bodyhandler.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/defs.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/dialog.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/dict.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/generic-uri.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/headers.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/http-listener.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/http-message.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/http-provider.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/list.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/listener.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/listeningpoint.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/mainloop.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/message.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/object.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/parameters.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/provider.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/refresher.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/resolver.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/sip-uri.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/sipstack.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/transaction.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/types.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/utils.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/belle-sip/include/belle-sip/wakelock.h"
    )
endif()

