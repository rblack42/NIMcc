CC	:= gcc
TARGET	:= $(PROJNAME)$(EXT)
LIB	:= lib$(PROJNAME).a
LIBDIR	:= bin

HDRS	:= $(shell python $(MK)/pyfind.py include .h)
USRCS	:= $(wildcard src/*.c)
LSRCS	:= $(shell python $(MK)/pyfind.py lib .c)

UOBJS	:= $(USRCS:.c=.o)
LOBJS	:= $(LSRCS:.c=.o)

CCFLAGS	= -std=c11 -Iinclude -MMD

$(TARGET):	$(UOBJS) $(LOBJS)
	@python $(MK)/pyversion.py inc-build
	gcc -o $@ $^ $(CCFLAGS)

%.o:	%.c
	$(CC) -c -o $@ $^ $(CCFLAGS)

.PHONY:	run
run:	$(TARGET)$(EXT)
	$(PREFIX)$@
