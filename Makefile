CC ?= gcc
PREFIX ?= /usr
DESTDIR ?= /

all: helloworld

helloworld: helloworld.c
	$(CC) -o $@ $<

clean:
	rm -f helloworld

install:
	install -v -m644 -D helloworld $(DESTDIR)$(PREFIX)/bin/helloworld
