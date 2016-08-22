#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = 
CFLAGS = -Wall
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = 

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS) -lpthread
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = ./TinyWeb

OBJ_DEBUG = $(OBJDIR_DEBUG)/src/csapp.o $(OBJDIR_DEBUG)/src/sbuf.o $(OBJDIR_DEBUG)/src/tiny.o

all: debug

clean: clean_debug

before_debug: 
	test -d . || mkdir -p .
	test -d $(OBJDIR_DEBUG)/src || mkdir -p $(OBJDIR_DEBUG)/src

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/src/csapp.o: src/csapp.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/csapp.c -o $(OBJDIR_DEBUG)/src/csapp.o

$(OBJDIR_DEBUG)/src/sbuf.o: src/sbuf.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/sbuf.c -o $(OBJDIR_DEBUG)/src/sbuf.o

$(OBJDIR_DEBUG)/src/tiny.o: src/tiny.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/tiny.c -o $(OBJDIR_DEBUG)/src/tiny.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf .
	rm -rf $(OBJDIR_DEBUG)/src

.PHONY: before_debug after_debug clean_debug

