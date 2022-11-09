
#  Simple hard-wired config.h file for gnu compilers

FLIBS=-lsff -llapack -lblas $(LIBGFORTRAN) -lgfortran

CC=gcc
CFLAGS=-g
COPTFLAGS=-O3 -mtune=native

.SUFFIXES: .o .c .cif .mol2

txmin: txmin.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $< -L$(AFNMRHOME)/lib $(FLIBS) -lm

.c.o:
	$(CC) -c $(CFLAGS) -o $@ $<

.cif.mol2:
	/home/case/geostd/gcif_to_mol2 $<


