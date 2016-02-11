# Install script for directory: /Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/doc/CUnit" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/CUnit_doc.css"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/error_handling.html"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/fdl.html"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/index.html"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/introduction.html"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/managing_tests.html"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/running_tests.html"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/test_registry.html"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/writing_tests.html"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/doc/CUnit/headers" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/../CUnit/Headers/Automated.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/../CUnit/Headers/Basic.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/../CUnit/Headers/Console.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/../CUnit/Headers/CUCurses.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/../CUnit/Headers/CUError.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/../CUnit/Headers/CUnit.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/../CUnit/Headers/CUnit_intl.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/../CUnit/Headers/MyMem.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/../CUnit/Headers/TestDB.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/../CUnit/Headers/TestRun.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/../CUnit/Headers/Util.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/../CUnit/Headers/wxWidget.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/cunit/doc/../CUnit/Sources/Win/Win.h"
    )
endif()

