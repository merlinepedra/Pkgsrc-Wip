# $NetBSD$

DISTNAME=	pkgbase-1.0
CATEGORIES=	pkgtools
HG_REPO=	${.CURDIR:H}/repos/pkgbase

MAINTAINER=	rillig@NetBSD.org
HOMEPAGE=	https://www.pkgsrc.org/
COMMENT=	Test for Mercurial with CHECKOUT_DATE
LICENSE=	2-clause-bsd

NO_CHECKSUM=	yes

.include "../../wip/mk/hg-package.mk"
.include "../../mk/bsd.pkg.mk"
