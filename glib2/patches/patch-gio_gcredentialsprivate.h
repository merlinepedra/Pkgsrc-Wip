$NetBSD: patch-gio_gcredentialsprivate.h,v 1.4 2020/09/29 10:43:33 prlw1 Exp $

NetBSD has G_CREDENTIALS_SOCKET_GET_CREDENTIALS_SUPPORTED.

--- gio/gcredentialsprivate.h.orig	2020-08-18 10:52:24.847177300 +0000
+++ gio/gcredentialsprivate.h
@@ -134,7 +134,7 @@
 #define G_CREDENTIALS_USE_NETBSD_UNPCBID 1
 #define G_CREDENTIALS_NATIVE_TYPE G_CREDENTIALS_TYPE_NETBSD_UNPCBID
 #define G_CREDENTIALS_NATIVE_SIZE (sizeof (struct unpcbid))
-/* #undef G_CREDENTIALS_UNIX_CREDENTIALS_MESSAGE_SUPPORTED */
+#define G_CREDENTIALS_SOCKET_GET_CREDENTIALS_SUPPORTED 1
 #define G_CREDENTIALS_SPOOFING_SUPPORTED 1
 #define G_CREDENTIALS_HAS_PID 1
 