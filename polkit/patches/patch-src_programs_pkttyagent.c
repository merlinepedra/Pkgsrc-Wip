$NetBSD$

--- src/programs/pkttyagent.c.orig	2015-06-18 20:20:50.000000000 +0000
+++ src/programs/pkttyagent.c
@@ -24,6 +24,7 @@
 #endif
 
 #include <stdio.h>
+#include <errno.h>
 #include <glib/gi18n.h>
 #include <polkit/polkit.h>
 #define POLKIT_AGENT_I_KNOW_API_IS_SUBJECT_TO_CHANGE
@@ -204,7 +205,7 @@ main (int argc, char *argv[])
     {
       if (close (opt_notify_fd) != 0)
         {
-          g_printerr ("Error closing notify-fd %d: %m\n", opt_notify_fd);
+          g_printerr ("Error closing notify-fd %d: %s\n", opt_notify_fd, g_strerror(errno));
           goto out;
         }
     }
