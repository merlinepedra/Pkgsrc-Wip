$NetBSD$

Portability.

--- plugins/bladesio1/gui.c.orig	2019-03-06 11:37:17.000000000 +0000
+++ plugins/bladesio1/gui.c
@@ -27,8 +27,8 @@
 
 #include <sys/socket.h>
 #include <sys/ioctl.h>
-#include <linux/if.h>
 #include <netinet/in.h>
+#include <net/if.h>
 #include <arpa/inet.h>
 #include <netdb.h>
 
