# $NetBSD$

DISTNAME=	pkgbase-1.0
CATEGORIES=	pkgtools
GIT_REPO=	${.CURDIR:H}/repos/pkgbase

MAINTAINER=	rillig@NetBSD.org
HOMEPAGE=	https://www.pkgsrc.org/
COMMENT=	Test for Git with a single repository
LICENSE=	2-clause-bsd

NO_CHECKSUM=	yes

.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
