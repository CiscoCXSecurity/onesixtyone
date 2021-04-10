CC=gcc
CFLAGS=-O2 -pipe
VERSION=0.6
DIR=onesixtyone-$(VERSION)
DISTFILES=ChangeLog INSTALL Makefile README dict.txt onesixtyone.c

all: onesixtyone

onesixtyone: onesixtyone.c
	$(CC) $(CFLAGS) -o onesixtyone onesixtyone.c

solaris: onesixtyone.c
	$(CC) $(CFLAGS) -o onesixtyone onesixtyone.c -lsocket -lnsl

install:
	cp onesixtyone /usr/local/bin

clean:
	rm -rf onesixtyone

dist:
	rm -rf $(DIR)
	rm $(DIR).tar.gz
	mkdir $(DIR)
	cp $(DISTFILES) $(DIR)
	tar cfz $(DIR).tar.gz $(DIR)
