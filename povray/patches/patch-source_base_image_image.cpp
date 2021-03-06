$NetBSD: patch-source_base_image_image.cpp,v 1.2 2012/05/30 11:59:06 thomasklausner Exp $

At least on NetBSD, lseek is 64-bit ready and lseek64 doesn't exist.

--- source/base/image/image.cpp.orig	2021-07-08 09:56:01.000000000 +0000
+++ source/base/image/image.cpp
@@ -2829,7 +2829,7 @@ class FileBackedPixelContainer
 			meta[0] = sizeof(pixel_type);
 			meta[1] = m_Width;
 			meta[2] = m_Height;
-			if (lseek64(m_File, pos, SEEK_SET) != pos)
+			if (lseek(m_File, pos, SEEK_SET) != pos)
 				throw POV_EXCEPTION(kFileDataErr, "Intermediate image storage backing file write/seek failed at creation.");
 			if (write(m_File, &meta[0], (int) sizeof(size_type)*3) != (sizeof(size_type)*3))
 				throw POV_EXCEPTION(kFileDataErr, "Intermediate image storage backing file write failed at creation.");
@@ -3000,7 +3000,7 @@ class FileBackedPixelContainer
 #endif
 				pos = block * sizeof(pixel_type) * m_Blocksize;
 				int chunk = sizeof(pixel_type) * m_Blocksize;
-				if (lseek64(m_File, pos, SEEK_SET) != pos)
+				if (lseek(m_File, pos, SEEK_SET) != pos)
 					throw POV_EXCEPTION(kFileDataErr, "Intermediate image storage backing file read/seek failed.");
 				int bytes = read(m_File, &m_Buffer[0], chunk);
 				if (bytes != (sizeof(pixel_type) * m_Blocksize))
@@ -3023,7 +3023,7 @@ class FileBackedPixelContainer
 
 			if (m_Dirty) {
 				pos = m_CurrentBlock * sizeof(pixel_type) * m_Blocksize;
-				if (lseek64(m_File, pos, SEEK_SET) != pos)
+				if (lseek(m_File, pos, SEEK_SET) != pos)
 					throw POV_EXCEPTION(kFileDataErr, "Intermediate image storage backing file write/seek failed.");
 				if (write(m_File, &m_Buffer[0], (int) sizeof(pixel_type) * m_Blocksize) != (sizeof(pixel_type) * m_Blocksize))
 					throw POV_EXCEPTION(kFileDataErr, "Intermediate image storage backing file write failed.");
