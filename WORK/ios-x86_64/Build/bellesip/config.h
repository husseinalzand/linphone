/***************************************************************************
* antlr3config.h.cmake
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

#define PACKAGE "belle-sip"
#define PACKAGE_NAME "belle-sip"
#define PACKAGE_VERSION "1.4.1"
#define PACKAGE_STRING "belle-sip 1.4.1"
#define PACKAGE_TARNAME "belle-sip"
#define PACKAGE_BUGREPORT "jehan.monnier@linphone.org"
/* #undef PACKAGE_URL */
#define VERSION "1.4.1"

#define HAVE_LIBDL
/* #undef HAVE_LIBRT */

#define HAVE_RESINIT

#define HAVE_ANTLR3_H
#define HAVE_ANTLR_STRING_STREAM_NEW

#define HAVE_POLARSSL_SSL_H
#define HAVE_POLARSSL

/* #undef HAVE_CUNIT_CUNIT_H */
/* #undef HAVE_CU_CURSES */
/* #undef HAVE_CU_GET_SUITE */

/* #undef HAVE_TUNNEL */

/* #undef BELLE_SDP_FORCE_RTP_MAP */
#define ENABLE_SERVER_SOCKETS
