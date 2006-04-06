# $NetBSD: buildlink3.mk,v 1.2 2006/04/06 07:17:25 jeremy-c-reed Exp $

BUILDLINK_DEPMETHOD.inputproto?=	build

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
INPUTPROTO_BUILDLINK3_MK:=	${INPUTPROTO_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	inputproto
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ninputproto}
BUILDLINK_PACKAGES+=	inputproto

.if !empty(INPUTPROTO_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.inputproto+=	inputproto>=1.3
BUILDLINK_PKGSRCDIR.inputproto?=	../../wip/inputproto
.endif	# INPUTPROTO_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
