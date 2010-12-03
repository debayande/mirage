.PHONY: all clean tools
.DEFAULT: all
-include Makefile.config

SUDO ?= sudo
export SUDO

DESTDIR ?=
export DESTDIR

PREFIX ?= $(HOME)/mir-inst
export PREFIX

all: tools
	cd lib && $(MAKE)

tools:
	@cd tools && $(MAKE) tools

install:
	@cd lib && $(MAKE) install
	@cd scripts && $(MAKE) install

clean:
	@cd tools && $(MAKE) clean
	@cd lib && $(MAKE) clean
