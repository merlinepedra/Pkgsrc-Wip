# $NetBSD: buildlink3.mk,v 1.1.1.1 2006/01/16 23:15:26 poppnk Exp $
# XXX
# XXX This file was created automatically using createbuildlink-3.8.
# XXX After this file has been verified as correct, the comment lines
# XXX beginning with "XXX" should be removed.  Please do not commit
# XXX unverified buildlink3.mk files.
# XXX
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.libgksu1.2?=	build

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBGKSU1.2_BUILDLINK3_MK:=	${LIBGKSU1.2_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libgksu1.2
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibgksu1.2}
BUILDLINK_PACKAGES+=	libgksu1.2

.if !empty(LIBGKSU1.2_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libgksu1.2+=	libgksu1.2>=1.3.7
BUILDLINK_PKGSRCDIR.libgksu1.2?=	../../wip/libgksu
.endif	# LIBGKSU1.2_BUILDLINK3_MK

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../x11/gtk2/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
