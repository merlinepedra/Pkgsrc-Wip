$OpenBSD: patch-src_buildtools_config_linking_pri,v 1.1 2021/01/19 06:16:35 rsadowski Exp $

Index: src/buildtools/config/linking.pri
--- src/buildtools/config/linking.pri.orig
+++ src/buildtools/config/linking.pri
@@ -1,6 +1,14 @@
 include($$QTWEBENGINE_OUT_ROOT/src/buildtools/qtbuildtools-config.pri)
 QT_FOR_CONFIG += buildtools-private
 
+# Do not pass --no-undefined to the linker because of environ(7) usage.
+openbsd: QMAKE_LFLAGS_NOUNDEF =
+
+
+# Do not pass --no-undefined to the linker because of environ(7) usage.
+netbsd: QMAKE_LFLAGS_NOUNDEF =
+
+
 linking_pri = $$OUT_PWD/$$getConfigDir()/$${TARGET}.pri
 
 !include($$linking_pri) {
@@ -34,7 +38,7 @@ if(macos|ios) {
     }
 }
 
-linux {
+unix {
     !static {
         QMAKE_LFLAGS += @$${RSP_OBJECT_FILE}
         QMAKE_LFLAGS += -Wl,--start-group @$${RSP_ARCHIVE_FILE} -Wl,--end-group
@@ -60,7 +64,7 @@ LIBS_PRIVATE += $$NINJA_LIB_DIRS $$NINJA_LIBS
 
 unix:qtConfig(webengine-noexecstack): \
     QMAKE_LFLAGS += -Wl,-z,noexecstack
-linux {
+unix {
     # add chromium flags
     for(flag, NINJA_LFLAGS) {
         # filter out some flags