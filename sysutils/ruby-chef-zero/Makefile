# $NetBSD: Makefile,v 1.16 2021/04/01 14:10:53 taca Exp $

DISTNAME=	chef-zero-15.0.4
CATEGORIES=	sysutils

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/opscode/chef-zero
COMMENT=	Simple fast-start in-memory Chef server
LICENSE=	apache-2.0

DEPENDS+=	${RUBY_PKGPREFIX}-ffi-yajl>=2.2<3:../../devel/ruby-ffi-yajl
DEPENDS+=	${RUBY_PKGPREFIX}-mixlib-log>=2.0<4:../../devel/ruby-mixlib-log
DEPENDS+=	${RUBY_PKGPREFIX}-uuidtools>=2.1<3:../../devel/ruby-uuidtools
DEPENDS+=	${RUBY_PKGPREFIX}-hashie>=2.0.5<5:../../misc/ruby-hashie
DEPENDS+=	${RUBY_PKGPREFIX}-rack>=2.0.6<3:../../www/ruby-rack

USE_LANGUAGES=		# none
RUBYGEM_OPTIONS+=	--format-executable

pre-configure:
	cd ${WRKSRC}/bin && ${CHMOD} ${BINMODE} chef-zero

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
