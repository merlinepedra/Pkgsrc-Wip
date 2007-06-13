# $NetBSD: options.mk,v 1.1 2007/06/13 10:36:37 ondratu Exp $
#

PKG_OPTIONS_VAR=	PKG_OPTIONS.cvsnt
PKG_SUPPORTED_OPTIONS=	pam mysql

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mpam)
.include "../../mk/pam.buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mmysql)
.include "../../mk/mysql.buildlink3.mk"
PLIST_SUBST+=   AUDIT_MYSQL=lib/cvsnt/database/mysql.la
.else
CONFIGURE_ARGS+=		--disable-mysql
PLIST_SUBST+=   AUDIT_MYSQL="@comment no MYSQL module"
.endif
