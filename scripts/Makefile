BINDIR=	~/bin
SCRIPTS=	cx fd File note pygrep rgrep vg vgr vn dos2ux
Usage:
	less Makefile

all:	checkin install

install:
	mkdir -p ~/bin
	cp -p ${SCRIPTS} ${BINDIR}
	chmod +x ${BINDIR}/*

checkin ci:
	hg commit
	hg push
