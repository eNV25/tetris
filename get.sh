#!/bin/sh
curl -sL 'https://cdn.openbsd.org/pub/OpenBSD/7.0/src.tar.gz' |
	bsdtar -xvf - --strip-components=2 'games/tetris/*.c' 'games/tetris/*.h' 'games/tetris/tetris.6' 'games/tetris/Makefile'
