# $NetBSD: Makefile,v 1.41 2020/08/17 20:18:43 leot Exp $
#

DISTNAME=		freesci-0.3.5
PKGREVISION=		12
CATEGORIES=		games
MASTER_SITES=		http://www-plan.cs.colorado.edu/reichenb/freesci/

MAINTAINER=		pkgsrc-users@NetBSD.org
#HOMEPAGE=		http://freesci.linuxgames.com/
COMMENT=		Interpreter for Sierra On-Line's SCI games

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
USE_TOOLS+=		wish:run
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--without-ggi --without-directfb

REPLACE_WISH=		conf/freesci-setup

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/examples/freesci
	${INSTALL_DATA} ${FILESDIR}/config ${DESTDIR}${PREFIX}/share/examples/freesci

.include "../../devel/SDL/buildlink3.mk"
.include "../../mk/readline.buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
#.include "../../mk/motif.buildlink3.mk"
#.include "../../mk/oss.buildlink3.mk"
.include "../../x11/tk/interpreter.mk"
.include "../../mk/bsd.pkg.mk"
