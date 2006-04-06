# $NetBSD: buildlink3.mk,v 1.3 2006/04/06 07:17:36 jeremy-c-reed Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBARGP_BUILDLINK3_MK:=	${LIBARGP_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libargp
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibargp}
BUILDLINK_PACKAGES+=	libargp

.if !empty(LIBARGP_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libargp+=	libargp>=1.3
BUILDLINK_PKGSRCDIR.libargp?=	../../wip/libargp
BUILDLINK_DEPMETHOD.libargp?=	build
.endif	# LIBARGP_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
