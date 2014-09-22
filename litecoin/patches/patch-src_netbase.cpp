$NetBSD: patch-src_netbase.cpp,v 1.1 2014/09/22 11:20:28 othyro Exp $

be nbsd specific.

--- src/netbase.cpp.orig	2014-06-13 21:36:21.000000000 +0000
+++ src/netbase.cpp
@@ -77,7 +77,7 @@ bool static LookupIntern(const char *psz
 #else
     aiHint.ai_family = AF_INET;
 #endif
-#ifdef WIN32
+#if defined(WIN32) || defined(__NetBSD__)
     aiHint.ai_flags = fAllowLookup ? 0 : AI_NUMERICHOST;
 #else
     aiHint.ai_flags = fAllowLookup ? AI_ADDRCONFIG : AI_NUMERICHOST;
