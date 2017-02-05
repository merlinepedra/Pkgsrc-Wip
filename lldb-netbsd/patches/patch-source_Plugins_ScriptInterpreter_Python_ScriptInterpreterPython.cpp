$NetBSD$

--- source/Plugins/ScriptInterpreter/Python/ScriptInterpreterPython.cpp.orig	2017-01-31 17:20:57.000000000 +0000
+++ source/Plugins/ScriptInterpreter/Python/ScriptInterpreterPython.cpp
@@ -338,9 +338,9 @@ ScriptInterpreterPython::~ScriptInterpre
 }
 
 void ScriptInterpreterPython::Initialize() {
-  static std::once_flag g_once_flag;
+  static llvm::once_flag g_once_flag;
 
-  std::call_once(g_once_flag, []() {
+  llvm::call_once(g_once_flag, []() {
     PluginManager::RegisterPlugin(GetPluginNameStatic(),
                                   GetPluginDescriptionStatic(),
                                   lldb::eScriptLanguagePython, CreateInstance);
