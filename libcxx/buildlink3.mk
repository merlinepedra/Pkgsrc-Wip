# $NetBSD: buildlink3.mk,v 1.5 2021/07/12 18:46:07 adam Exp $

BUILDLINK_TREE+=	libcxx

.if !defined(LIBCXX_BUILDLINK3_MK)
LIBCXX_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libcxx+=	libcxx>=14.0.0
BUILDLINK_PKGSRCDIR.libcxx?=	../../wip/libcxx

.include "../../wip/llvm/buildlink3.mk"
.endif	# LIBCXX_BUILDLINK3_MK

BUILDLINK_TREE+=	-libcxx
