/***************************************************************************
* config.h.cmake
* Copyright (C) 2014  Belledonne Communications, Grenoble France
*
****************************************************************************
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public License
* as published by the Free Software Foundation; either version 2
* of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*
****************************************************************************/

#define MEDIASTREAMER_MAJOR_VERSION 2
#define MEDIASTREAMER_MINOR_VERSION 11
#define MEDIASTREAMER_MICRO_VERSION 2
#define MEDIASTREAMER_VERSION "2.11.2"

#define HAVE_SYS_SHM_H 1
#define HAVE_ALLOCA_H 1
#define HAVE_DLOPEN 1

/* #undef WORDS_BIGENDIAN */

#define MS_FIXED_POINT
#define HAVE_NON_FREE_CODECS 0
/* #undef HAVE_CU_GET_SUITE */
/* #undef HAVE_CU_CURSES */

#define HAVE_SRTP
#define HAVE_ZRTP
#define HAVE_DTLS

/* #undef __ALSA_ENABLED__ */
/* #undef __ARTS_ENABLED__ */
/* #undef __MACSND_ENABLED__ */
#define __MAC_AQ_ENABLED__
/* #undef __PORTAUDIO_ENABLED__ */
/* #undef __PULSEAUDIO_ENABLED__ */
/* #undef __QSA_ENABLED__ */
#define HAVE_SPEEXDSP
#define PACKAGE_PLUGINS_DIR "./lib/mediastreamer/plugins"
#define PACKAGE_DATA_DIR "./share"
#define PLUGINS_EXT ".dylib"

#define HAVE_LIBAVCODEC_AVCODEC_H 1
#define HAVE_LIBSWSCALE_SWSCALE_H 1
#define HAVE_FUN_avcodec_get_context_defaults3 1
#define HAVE_FUN_avcodec_open2 1
#define HAVE_FUN_avcodec_encode_video2 1
#define HAVE_FUN_av_frame_alloc 1
#define HAVE_FUN_av_frame_free 1
#define HAVE_FUN_av_frame_unref 1
/* #undef HAVE_GL */
/* #undef HAVE_X11_XLIB_H */
/* #undef HAVE_XV */
/* #undef HAVE_LINUX_VIDEODEV_H */
/* #undef HAVE_LINUX_VIDEODEV2_H */
#define HAVE_POLARSSL_SSL_H 1
/* #undef HAVE_PCAP */
/* #undef HAVE_MATROSKA */
