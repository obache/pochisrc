# $NetBSD: Makefile,v 1.15 2021/05/24 19:52:01 wiz Exp $
#

DISTNAME=	pstreams-0.8.1
PKGREVISION=	5
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pstreams/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://pstreams.sourceforge.net/
COMMENT=	POSIX Process Control in C++
LICENSE=	gnu-lgpl-v3

USE_LANGUAGES=	c++

USE_TOOLS+=	perl:build

INSTALL_MAKE_FLAGS=	prefix=${PREFIX}

TEST_TARGET=	test

.include "../../mk/bsd.pkg.mk"
