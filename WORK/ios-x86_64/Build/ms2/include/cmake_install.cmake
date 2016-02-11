# Install script for directory: /Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mediastreamer2" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/allfilters.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/bitratecontrol.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/bits_rw.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/dsptools.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/dtls_srtp.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/dtmfgen.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/flowcontrol.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/formats.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/ice.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/mediastream.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/ms_srtp.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msaudiomixer.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/mschanadapter.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/mscodecutils.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/mscommon.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msconference.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msequalizer.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/mseventqueue.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msextdisplay.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msfactory.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msfileplayer.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msfilerec.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msfilter.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msgenericplc.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msinterfaces.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msitc.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msjava.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msjpegwriter.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msmediaplayer.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msqueue.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msrtp.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/mssndcard.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/mstee.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msticker.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/mstonedetector.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msutils.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msv4l.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msvaddtx.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msvideo.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msvideoout.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msvideopresets.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/msvolume.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/mswebcam.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/qualityindicator.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/rfc3984.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/stun.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/stun_udp.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/upnp_igd.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/videostarter.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/x11_helper.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/linphone/mediastreamer2/include/mediastreamer2/zrtp.h"
    )
endif()

