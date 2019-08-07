.PHONY: build

SRCDIR := Snake
BLDDIR := build
NAME := Snake

build:
	fpc ${SRCDIR}/${NAME}.pas
	rm ${SRCDIR}/${NAME}.o
	mv -f ${SRCDIR}/${NAME}.exe ${BLDDIR}
