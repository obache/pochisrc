# $NetBSD: Makefile,v 1.25 2020/02/10 15:13:06 adam Exp $

PKGNAME=	${DISTNAME:S/-/-smbk5pwd-/}
COMMENT=	Samba and Kerberos password sync for OpenLDAP

CONFLICTS+=	openldap<2.3.23nb1
DEPENDS+=	openldap-server>=2.4.13nb1:../../databases/openldap-server

USE_LIBTOOL=	yes

BUILD_DIRS=		include contrib/slapd-modules/smbk5pwd
INSTALLATION_DIRS+=	lib/openldap

do-install:
	${LIBTOOL} --mode=install ${INSTALL_LIB}			\
		   ${WRKSRC}/contrib/slapd-modules/smbk5pwd/smbk5pwd.la	\
		   ${DESTDIR}${PREFIX}/lib/openldap

.include "../../mk/bsd.prefs.mk"

.include "../../databases/openldap-server/options.mk"

.include "../../mk/krb5.buildlink3.mk"

.if ${KRB5_TYPE} == "heimdal"
CPPFLAGS+=	-DDO_SAMBA -DDO_KRB5
LIBS+=		-lkrb5 -lkadm5srv
.else
CPPFLAGS+=	-DDO_SAMBA
.endif

LIBS+=		-L${BUILDLINK_PREFIX.openssl}/lib
MAKE_ENV+=	EXTRA_LIBS=${LIBS:M*:Q}

.include "../../databases/openldap/Makefile.common"
.include "../../databases/openldap-client/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
