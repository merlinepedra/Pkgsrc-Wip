# $NetBSD$

BUILDLINK_TREE+=	sds

.if !defined(SDS_BUILDLINK3_MK)
SDS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.sds+=	sds>=2.0.0
BUILDLINK_PKGSRCDIR.sds?=	../../wip/sds
.endif	# SDS_BUILDLINK3_MK

BUILDLINK_TREE+=	-sds
