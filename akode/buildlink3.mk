# $NetBSD: buildlink3.mk,v 1.2 2008/12/05 14:03:53 htepper Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
AKODE_BUILDLINK3_MK:=	${AKODE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	akode
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nakode}
BUILDLINK_PACKAGES+=	akode
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}akode

.if !empty(AKODE_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.akode+=	akode>=2.0.2
BUILDLINK_PKGSRCDIR.akode?=	../../wip/akode
.endif	# AKODE_BUILDLINK3_MK

.include "../../audio/flac/buildlink3.mk"
.include "../../audio/libmad/buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../devel/libltdl/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
