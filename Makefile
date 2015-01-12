all: helloworld

helloworld: helloworld.c
	gcc -o $@ $<

clean:
	rm -f helloworld

install:
	install -v -m644 -D helloworld /usr/bin/helloworld
