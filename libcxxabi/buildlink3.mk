# $NetBSD: buildlink3.mk,v 1.5 2021/07/12 18:46:07 adam Exp $

BUILDLINK_TREE+=	libcxxabi

.if !defined(LIBCXXABI_BUILDLINK3_MK)
LIBCXXABI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libcxxabi+=	libcxxabi>=14.0.0
BUILDLINK_PKGSRCDIR.libcxxabi?=		../../wip/libcxxabi

.include "../../wip/llvm/buildlink3.mk"
.include "../../wip/libunwind/buildlink3.mk"
.endif	# LIBCXXABI_BUILDLINK3_MK

BUILDLINK_TREE+=	-libcxxabi
