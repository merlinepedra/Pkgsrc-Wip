# $NetBSD: buildlink3.mk,v 1.2 2006/04/06 07:17:24 jeremy-c-reed Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
GUNE_BUILDLINK3_MK:=	${GUNE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	gune
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngune}
BUILDLINK_PACKAGES+=	gune

.if !empty(GUNE_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.gune+=	gune>=1.0
BUILDLINK_PKGSRCDIR.gune?=	../../wip/gune
.endif	# GUNE_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
