$NetBSD: patch-gcc_ggc-common.c,v 1.1 2014/02/09 08:53:45 keckhardt Exp $

--- gcc/ggc-common.c.orig	2014-02-08 12:12:33.000000000 +0000
+++ gcc/ggc-common.c
@@ -667,6 +667,8 @@ gt_pch_restore (FILE *f)
   size_t i;
   struct mmap_info mmi;
   int result;
+  struct line_maps * old_line_table = line_table;
+  location_t old_input_loc = input_location;
 
   /* Delete any deletable objects.  This makes ggc_pch_read much
      faster, as it can be sure that no GCable objects remain other
@@ -678,39 +680,60 @@ gt_pch_restore (FILE *f)
   /* Read in all the scalar variables.  */
   for (rt = gt_pch_scalar_rtab; *rt; rt++)
     for (rti = *rt; rti->base != NULL; rti++)
-      if (fread (rti->base, rti->stride, 1, f) != 1)
+      if (fread (rti->base, rti->stride, 1, f) != 1) {
+        line_table = old_line_table;
+        input_location = old_input_loc;
 	fatal_error ("can%'t read PCH file: %m");
+      }
 
   /* Read in all the global pointers, in 6 easy loops.  */
   for (rt = gt_ggc_rtab; *rt; rt++)
     for (rti = *rt; rti->base != NULL; rti++)
       for (i = 0; i < rti->nelt; i++)
 	if (fread ((char *)rti->base + rti->stride * i,
-		   sizeof (void *), 1, f) != 1)
+		   sizeof (void *), 1, f) != 1) {
+          line_table = old_line_table;
+          input_location = old_input_loc;
 	  fatal_error ("can%'t read PCH file: %m");
+        }
 
   for (rt = gt_pch_cache_rtab; *rt; rt++)
     for (rti = *rt; rti->base != NULL; rti++)
       for (i = 0; i < rti->nelt; i++)
 	if (fread ((char *)rti->base + rti->stride * i,
-		   sizeof (void *), 1, f) != 1)
+		   sizeof (void *), 1, f) != 1) {
+          line_table = old_line_table;
+          input_location = old_input_loc;
 	  fatal_error ("can%'t read PCH file: %m");
+        }
 
-  if (fread (&mmi, sizeof (mmi), 1, f) != 1)
+  if (fread (&mmi, sizeof (mmi), 1, f) != 1) {
+    line_table = old_line_table;
+    input_location = old_input_loc;
     fatal_error ("can%'t read PCH file: %m");
+  }
 
   result = host_hooks.gt_pch_use_address (mmi.preferred_base, mmi.size,
 					  fileno (f), mmi.offset);
-  if (result < 0)
+  if (result < 0) {
+    line_table = old_line_table;
+    input_location = old_input_loc;
     fatal_error ("had to relocate PCH");
+  }
   if (result == 0)
     {
       if (fseek (f, mmi.offset, SEEK_SET) != 0
-	  || fread (mmi.preferred_base, mmi.size, 1, f) != 1)
+	  || fread (mmi.preferred_base, mmi.size, 1, f) != 1) {
+        line_table = old_line_table;
+        input_location = old_input_loc;
 	fatal_error ("can%'t read PCH file: %m");
+      }
     }
-  else if (fseek (f, mmi.offset + mmi.size, SEEK_SET) != 0)
+  else if (fseek (f, mmi.offset + mmi.size, SEEK_SET) != 0) {
+    line_table = old_line_table;
+    input_location = old_input_loc;
     fatal_error ("can%'t read PCH file: %m");
+  }
 
   ggc_pch_read (f, mmi.preferred_base);
 
