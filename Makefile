CC ?= gcc
PREFIX ?= /usr
DESTDIR ?= /
CFLAGS=$(shell pkg-config --cflags egl)

all: helloworld

helloworld: helloworld.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f helloworld

install:
	install -v -m644 -D helloworld $(DESTDIR)$(PREFIX)/bin/helloworld
