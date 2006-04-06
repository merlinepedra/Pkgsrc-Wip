# $NetBSD: buildlink3.mk,v 1.3 2006/04/06 07:17:42 jeremy-c-reed Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBFONTENC_BUILDLINK3_MK:=	${LIBFONTENC_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libfontenc
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibfontenc}
BUILDLINK_PACKAGES+=	libfontenc

.if !empty(LIBFONTENC_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libfontenc+=	libfontenc>=0.99.0
BUILDLINK_PKGSRCDIR.libfontenc?=	../../wip/libfontenc
.endif	# LIBFONTENC_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
