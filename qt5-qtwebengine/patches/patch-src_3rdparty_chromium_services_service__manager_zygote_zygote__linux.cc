$NetBSD$

Index: src/3rdparty/chromium/services/service_manager/zygote/zygote_linux.cc
--- src/3rdparty/chromium/services/service_manager/zygote/zygote_linux.cc.orig
+++ src/3rdparty/chromium/services/service_manager/zygote/zygote_linux.cc
@@ -1,6 +1,7 @@
 // Copyright (c) 2012 The Chromium Authors. All rights reserved.
 // Use of this source code is governed by a BSD-style license that can be
 // found in the LICENSE file.
+#if 0
 
 #include "services/service_manager/zygote/zygote_linux.h"
 
@@ -657,3 +658,4 @@ bool Zygote::HandleGetSandboxStatus(int fd, base::Pick
 }
 
 }  // namespace service_manager
+#endif
