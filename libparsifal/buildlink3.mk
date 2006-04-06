# $NetBSD: buildlink3.mk,v 1.2 2006/04/06 07:17:52 jeremy-c-reed Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBPARSIFAL_BUILDLINK3_MK:=	${LIBPARSIFAL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libparsifal
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibparsifal}
BUILDLINK_PACKAGES+=	libparsifal

.if !empty(LIBPARSIFAL_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libparsifal+=	libparsifal>=0.9.0
BUILDLINK_PKGSRCDIR.libparsifal?=	../../wip/libparsifal
.endif	# LIBPARSIFAL_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
