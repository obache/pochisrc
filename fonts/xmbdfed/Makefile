# $NetBSD: Makefile,v 1.21 2017/09/06 10:40:28 wiz Exp $

DISTNAME=	xmbdfed-4.5
PKGREVISION=	5
CATEGORIES=	fonts graphics x11
MASTER_SITES=	# ftp://crl.nmsu.edu/CLR/multiling/General/

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	http://crl.nmsu.edu/~mleisher/xmbdfed.html
COMMENT=	Motif-based BDF font editor with lots of features

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xmbdfed ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xmbdfed.man \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/xmbdfed.1

.include "../../graphics/freetype-lib/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../mk/motif.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
