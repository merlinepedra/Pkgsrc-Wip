# $NetBSD: buildlink3.mk,v 1.1.1.1 2006/11/09 00:22:38 kh-p Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
ODE_BUILDLINK3_MK:=	${ODE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	ode
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Node}
BUILDLINK_PACKAGES+=	ode
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}ode

.if !empty(ODE_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.ode+=		ode>=0.7
BUILDLINK_ABI_DEPENDS.ode?=	ode>=0.7
BUILDLINK_PKGSRCDIR.ode?=	../../wip/ode
.endif	# ODE_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
