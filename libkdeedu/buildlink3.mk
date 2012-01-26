# $NetBSD: buildlink3.mk,v 1.1 2012/01/26 11:14:55 mwdavies Exp $

BUILDLINK_TREE+=	libkdeedu

.if !defined(LIBKDEEDU_BUILDLINK3_MK)
LIBKDEEDU_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libkdeedu+=	libkdeedu>=4.8.0
BUILDLINK_PKGSRCDIR.libkdeedu?=	../../wip/libkdeedu

.include "../../wip/kdelibs4/buildlink3.mk"
.endif	# LIBKDEEDU_BUILDLINK3_MK

BUILDLINK_TREE+=	-libkdeedu
