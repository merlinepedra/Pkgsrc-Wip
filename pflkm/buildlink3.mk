# $NetBSD: buildlink3.mk,v 1.1 2004/06/24 22:11:45 ppostma Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
PF_LKM_BUILDLINK3_MK:=	${PF_LKM_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	pf-lkm
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npf-lkm}
BUILDLINK_PACKAGES+=	pf-lkm

.if !empty(PF_LKM_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.pf-lkm+=	pf-lkm>=20040607
BUILDLINK_PKGSRCDIR.pf-lkm?=	../../wip/pflkm
.endif	# PF_LKM_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
