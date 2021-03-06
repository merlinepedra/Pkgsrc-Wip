# $NetBSD$

DISTNAME=	pkgbase-1.0
CATEGORIES=	pkgtools

MAINTAINER=	rillig@NetBSD.org
HOMEPAGE=	https://www.pkgsrc.org/
COMMENT=	Test for Fossil with multiple repositories
LICENSE=	2-clause-bsd

NO_CHECKSUM=	yes

FOSSIL_REPO=		${.CURDIR:H}/repos/pkgbase.fossil
FOSSIL_REPOSITORIES=	2017 current
FOSSIL_REPO.2017=	${FOSSIL_REPO}
FOSSIL_VERSION.2017=	v2017
FOSSIL_REPO.current=	${FOSSIL_REPO}

.include "../../wip/mk/fossil-package.mk"
.include "../../mk/bsd.pkg.mk"
