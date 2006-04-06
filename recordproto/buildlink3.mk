# $NetBSD: buildlink3.mk,v 1.2 2006/04/06 07:18:24 jeremy-c-reed Exp $

BUILDLINK_DEPMETHOD.recordproto?=	build

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
RECORDPROTO_BUILDLINK3_MK:=	${RECORDPROTO_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	recordproto
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nrecordproto}
BUILDLINK_PACKAGES+=	recordproto

.if !empty(RECORDPROTO_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.recordproto+=	recordproto>=1.13.1
BUILDLINK_PKGSRCDIR.recordproto?=	../../wip/recordproto
.endif	# RECORDPROTO_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
