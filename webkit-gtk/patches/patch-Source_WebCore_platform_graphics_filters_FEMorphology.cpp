$NetBSD: patch-Source_WebCore_platform_graphics_filters_FEMorphology.cpp,v 1.1 2018/06/15 09:17:02 jperkin Exp $

Avoid ambiguous function call.

--- Source/WebCore/platform/graphics/filters/FEMorphology.cpp.orig	2022-02-23 08:59:02.000000000 +0000
+++ Source/WebCore/platform/graphics/filters/FEMorphology.cpp
@@ -29,6 +29,8 @@
 #include "FEMorphologySoftwareApplier.h"
 #include <wtf/text/TextStream.h>
 
+using std::sqrt;
+
 namespace WebCore {
 
 Ref<FEMorphology> FEMorphology::create(MorphologyOperatorType type, float radiusX, float radiusY)
