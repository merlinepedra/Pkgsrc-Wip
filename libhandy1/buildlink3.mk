# $NetBSD: buildlink3.mk,v 1.1 2020/11/10 17:45:05 nia Exp $

BUILDLINK_TREE+=	libhandy1

.if !defined(LIBHANDY1_BUILDLINK3_MK)
LIBHANDY1_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libhandy1+=	libhandy1>=1.0
BUILDLINK_ABI_DEPENDS.libhandy1?=	libhandy1>=1.0
BUILDLINK_PKGSRCDIR.libhandy1?=		../../wip/libhandy1

.include "../../x11/gtk3/buildlink3.mk"
.endif	# LIBHANDY1_BUILDLINK3_MK

BUILDLINK_TREE+=	-libhandy1
