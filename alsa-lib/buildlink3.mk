# $NetBSD: buildlink3.mk,v 1.3 2006/04/06 07:16:56 jeremy-c-reed Exp $
#
# This file was created automatically using createbuildlink-3.4.

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
ALSA_LIB_BUILDLINK3_MK:=	${ALSA_LIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	alsa-lib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nalsa-lib}
BUILDLINK_PACKAGES+=	alsa-lib

.if !empty(ALSA_LIB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.alsa-lib+=	alsa-lib>=1.0.6
BUILDLINK_PKGSRCDIR.alsa-lib?=	../../wip/alsa-lib
.endif	# ALSA_LIB_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
