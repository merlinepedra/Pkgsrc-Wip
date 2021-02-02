# $NetBSD$

BUILDLINK_TREE+=	go-mewn

.if !defined(GO_MEWN_BUILDLINK3_MK)
GO_MEWN_BUILDLINK3_MK:=

BUILDLINK_CONTENTS_FILTER.go-mewn=	${EGREP} gopkg/
BUILDLINK_DEPMETHOD.go-mewn?=		build

BUILDLINK_API_DEPENDS.go-mewn+=	go-mewn>=20200701
BUILDLINK_PKGSRCDIR.go-mewn?=	../../wip/go-mewn
.endif	# GO_MEWN_BUILDLINK3_MK

BUILDLINK_TREE+=	-go-mewn