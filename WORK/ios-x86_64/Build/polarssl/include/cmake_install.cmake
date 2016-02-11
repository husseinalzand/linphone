# Install script for directory: /Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/polarssl" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/aes.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/aesni.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/arc4.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/asn1.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/asn1write.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/base64.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/bignum.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/blowfish.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/bn_mul.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/camellia.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/ccm.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/certs.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/check_config.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/cipher.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/cipher_wrap.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/compat-1.2.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/config.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/ctr_drbg.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/debug.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/des.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/dhm.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/ecdh.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/ecdsa.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/ecp.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/entropy.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/entropy_poll.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/error.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/gcm.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/havege.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/hmac_drbg.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/md.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/md2.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/md4.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/md5.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/md_wrap.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/memory.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/memory_buffer_alloc.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/net.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/oid.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/openssl.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/padlock.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/pbkdf2.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/pem.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/pk.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/pk_wrap.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/pkcs11.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/pkcs12.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/pkcs5.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/platform.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/ripemd160.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/rsa.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/sha1.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/sha256.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/sha512.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/ssl.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/ssl_cache.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/ssl_ciphersuites.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/ssl_cookie.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/threading.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/timing.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/version.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/x509.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/x509_crl.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/x509_crt.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/x509_csr.h"
    "/Users/husseinalzandvirtual/linphone-iphone/submodules/externals/polarssl/include/polarssl/xtea.h"
    )
endif()

