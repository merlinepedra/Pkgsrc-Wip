$NetBSD$

--- libraries/source/fcollada/src/FCollada/FUtils/FUCriticalSection.h.orig
+++ libraries/source/fcollada/src/FCollada/FUtils/FUCriticalSection.h
@@ -33,7 +33,7 @@ private:
 #elif defined(__APPLE__)
 	//Do something here.
 	MPCriticalRegionID criticalSection;
-#elif defined(LINUX) || defined(__FreeBSD__) || defined(__FreeBSD_kernel__) || defined(__OpenBSD__)
+#elif defined(LINUX) || defined(__FreeBSD__) || defined(__FreeBSD_kernel__) || defined(__NetBSD__) || defined(__OpenBSD__)
 #else
 #warning "FUCriticalSection: Critical section not implemented for other platforms."
 #endif
