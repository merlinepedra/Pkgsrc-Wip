$NetBSD$

AI_V4MAPPED may not be defined on some platforms.
Define to 0 in such cases, so the flag won't be affected.

diff -r aaf73ded1091 -r 15ce679827e8 tcp.c
--- src/tcp.c~	Fri Jun 21 10:29:07 2019 +0000
+++ src/tcp.c	Fri Jun 21 11:18:15 2019 +0000
@@ -49,6 +49,14 @@
 # define TELOPTSTR(n) ((n) > NTELOPTS ? "unknown" : telopts[n])
 #endif
 
+/*
+ * some platforms do not have AI_V4MAPPED, define to 0
+ * so bitwise OR won't be changed
+ */
+#ifndef AI_V4MAPPED
+# define AI_V4MAPPED 0
+#endif
+
 int tcp_fd = -1;                   /* current socket file descriptor
 				    * -1 means no socket */
 int tcp_main_fd = -1;		   /* socket file descriptor of main connect.
