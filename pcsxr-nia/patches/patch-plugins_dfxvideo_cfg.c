$NetBSD$

Make the code more generic.

--- plugins/dfxvideo/cfg.c.orig	2019-03-06 11:37:17.000000000 +0000
+++ plugins/dfxvideo/cfg.c
@@ -20,7 +20,7 @@
 #include <sys/stat.h>
 #include <unistd.h>
 #include <stdlib.h>
-#if defined(__linux__)
+#if defined(__unix__)
 #include <sys/types.h>
 #include <sys/wait.h>
 #endif
