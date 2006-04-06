# $NetBSD: buildlink3.mk,v 1.4 2006/04/06 07:17:57 jeremy-c-reed Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBUUID_BUILDLINK3_MK:=	${LIBUUID_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libuuid
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibuuid}
BUILDLINK_PACKAGES+=	libuuid

.if !empty(LIBUUID_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libuuid+=	libuuid>=1.36
BUILDLINK_PKGSRCDIR.libuuid?=	../../wip/libuuid
.endif	# LIBUUID_BUILDLINK3_MK

.include "../../devel/gettext-lib/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
