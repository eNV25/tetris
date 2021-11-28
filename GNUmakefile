
PREFIX	:= /usr/local

PROG     := tetris
SRCS     := input.c scores.c screen.c shapes.c tetris.c
OBJS     := input.o scores.o screen.o shapes.o tetris.o
MAN      := tetris.6

DEPS     := ncurses libbsd-overlay
CPPFLAGS += -D_GNU_SOURCE -D__dead= -DOXTABS=XTABS -D"unveil(...)=0" -D"pledge(...)=0"
CFLAGS   += $(shell pkg-config --cflags $(DEPS))
LDLIBS   += $(shell pkg-config --libs $(DEPS))

all: $(PROG)

$(PROG): $(OBJS)

install: $(PROG)
	mkdir -p '$(DESTDIR)$(PREFIX)/bin/'
	install -s tetris '$(DESTDIR)$(PREFIX)/bin/'
	mkdir -p '$(DESTDIR)$(PREFIX)/man/man6/'
	install tetris.6 '$(DESTDIR)$(PREFIX)/man/man6/'

uninstall:
	$(RM) '$(DESTDIR)$(PREFIX)/bin/tetris'
	$(RM) '$(DESTDIR)$(PREFIX)/man/man6/tetris.6'

clean:
	-$(RM) $(OBJS) $(PROG)

.PHONY: all install uninstall clean
