# $NetBSD$

BUILDLINK_TREE+=	udev

.if !defined(UDEV_BUILDLINK3_MK)
UDEV_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.udev+=	udev>=243
BUILDLINK_PKGSRCDIR.udev?=	../../wip/udev

.endif	# UDEV_BUILDLINK3_MK

BUILDLINK_TREE+=	-udev
