#
# Version $Revision: 1.98 $
#
# The makefile for building all versions of iozone for all supported
# platforms
#
# Supports:	hpux, hpux_no_ansi, hpux-10.1, hpux_no_ansi-10.1,
#		sppux, sppux-10.1, ghpux, sppux, 
#		convex, FreeBSD, OpenBSD, OSFV3, OSFV4, OSFV5, SCO
#		SCO_Unixware_gcc,NetBSD,TRU64, Mac OS X

CC	= cc
C89	= c89
GCC	= gcc
CCS	= /usr/ccs/bin/cc
NACC	= /opt/ansic/bin/cc
CFLAGS	=

all:  
	@echo ""
	@echo "You must specify the target.        "
	@echo "        ->   AIX                  (32bit)   <-"
	@echo "        ->   AIX-LF               (32bit)   <-"
	@echo "        ->   bsdi                 (32bit)   <-" 
	@echo "        ->   convex               (32bit)   <-" 
	@echo "        ->   CrayX1               (32bit)   <-"
	@echo "        ->   freebsd              (32bit)   <-"
	@echo "        ->   generic              (32bit)   <-"
	@echo "        ->   ghpux                (32bit)   <-"
	@echo "        ->   hpuxs-11.0 (simple)  (32bit)   <-"
	@echo "        ->   hpux-11.0w           (64bit)   <-"
	@echo "        ->   hpuxs-11.0w          (64bit)   <-"
	@echo "        ->   hpux-11.0            (32bit)   <-"
	@echo "        ->   hpux-10.1            (32bit)   <-"
	@echo "        ->   hpux-10.20           (32bit)   <-"
	@echo "        ->   hpux                 (32bit)   <-" 
	@echo "        ->   hpux_no_ansi         (32bit)   <-"
	@echo "        ->   hpux_no_ansi-10.1    (32bit)   <-"
	@echo "        ->   IRIX                 (32bit)   <-"
	@echo "        ->   IRIX64               (64bit)   <-"
	@echo "        ->   linux                (32bit)   <-"
	@echo "        ->   linux-arm            (32bit)   <-"
	@echo "        ->   linux-AMD64          (64bit)   <-"
	@echo "        ->   linux-ia64           (64bit)   <-"
	@echo "        ->   linux-powerpc        (32bit)   <-"
	@echo "        ->   linux-powerpc64      (64bit)   <-"
	@echo "        ->   linux-sparc          (32bit)   <-"
	@echo "        ->   macosx               (32bit)   <-"
	@echo "        ->   netbsd               (32bit)   <-"
	@echo "        ->   openbsd              (32bit)   <-"
	@echo "        ->   openbsd-threads      (32bit)   <-"
	@echo "        ->   OSFV3                (64bit)   <-"
	@echo "        ->   OSFV4                (64bit)   <-"
	@echo "        ->   OSFV5                (64bit)   <-"
	@echo "        ->   linux-S390           (32bit)   <-"
	@echo "        ->   linux-S390X          (64bit)   <-"
	@echo "        ->   SCO                  (32bit)   <-"
	@echo "        ->   SCO_Unixware_gcc     (32bit)   <-"
	@echo "        ->   Solaris              (32bit)   <-"
	@echo "        ->   Solaris-2.6          (32bit)   <-"
	@echo "        ->   Solaris7gcc          (32bit)   <-"
	@echo "        ->   Solaris8-64          (64bit)   <-"
	@echo "        ->   Solaris8-64-VXFS     (64bit)   <-"
	@echo "        ->   Solaris10gcc         (32bit)   <-"
	@echo "        ->   sppux                (32bit)   <-"
	@echo "        ->   sppux-10.1           (32bit)   <-"
	@echo "        ->   sppux_no_ansi-10.1   (32bit)   <-"
	@echo "        ->   TRU64                (64bit)   <-"
	@echo "        ->   UWIN                 (32bit)   <-"
	@echo "        ->   Windows (95/98/NT)   (32bit)   <-"
	@echo ""

clean:
	rm -f *.o iozone fileop

rpm:
	cp ../../iozone*.tar /usr/src/red*/SO*
	rpmbuild -ba spec.in


#
# Turn on the optimizer, largefiles, Posix async I/O and threads.
#
hpux-11.0:	iozone_hpux-11.0.o libasync.o libbif.o
	 $(CC) +O3 +Oparallel $(LDFLAGS) iozone_hpux-11.0.o libasync.o \
		libbif.o -lpthread -lrt -o iozone

#
# Turn on wide-mode, the optimizer, largefiles, Posix async I/O and threads.
#
hpux-11.0w:	iozone_hpux-11.0w.o libasyncw.o libbif.o
	 $(CC) +DD64 +O3 $(LDFLAGS) iozone_hpux-11.0w.o libasyncw.o \
		libbif.o -lpthread -lrt -o iozone


#
# Simple build with largefiles, Posix threads and Posix async I/O
#
hpuxs-11.0:	iozone_hpuxs-11.0.o libasync.o libbif.o fileop_hpuxs-11.0.o 
	 $(CC) -O $(LDFLAGS)  iozone_hpuxs-11.0.o \
		libasync.o libbif.o -lpthread -lrt -o iozone
	 $(CC) -O $(LDFLAGS) fileop_hpuxs-11.0.o -o fileop

#
# Simple build with wide-mode, largefiles, Posix threads and Posix async I/O
#
hpuxs-11.0w:	iozone_hpuxs-11.0w.o libasyncw.o libbif.o
	 $(CC) -O +DD64 $(LDFLAGS) iozone_hpuxs-11.0w.o \
		libasyncw.o libbif.o -lpthread -lrt -o iozone

#
# Simple 10.1 build with no threads, no largefiles, no async I/O 
#
hpux-10.1:	iozone_hpux-10.1.o  libbif.o
	 $(C89) +e -O $(LDFLAGS) iozone_hpux-10.1.o libbif.o -o iozone

hpux-10.20:	iozone_hpux-10.20.o  libbif.o
	 $(C89) +e -O $(LDFLAGS) iozone_hpux-10.20.o libbif.o -o iozone

#
# Simple generic HP build with no threads, no largefiles, no async I/O 
#
hpux:	iozone_hpux.o 
	$(C89) +e -O $(LDFLAGS) iozone_hpux.o libbif.o -o iozone

#
# GNU HP build with no threads, no largefiles, no async I/O 
#
ghpux:	iozone_ghpux.o  libbif.o
	$(GCC) -O $(LDFLAGS) iozone_ghpux.o libbif.o -static -o iozone

#
# GNU Generic build with no threads, no largefiles, no async I/O 
#
generic:	iozone_generic.o  libbif.o
	$(CC)  -O $(LDFLAGS) iozone_generic.o libbif.o -o iozone

#
# No ansii 'C' compiler HP build with no threads, no largefiles, no async I/O 
#
hpux_no_ansi-10.1:	iozone_hpux_no-10.1.o  libbif.o 
	$(NACC)  -O $(LDFLAGS) iozone_hpux_no-10.1.o libbif.o -o iozone

#
# No ansii 'C' compiler HP build with no threads, no largefiles, no async I/O 
#
hpux_no_ansi:	iozone_hpux_no.o  libbif.o
	$(C89)  -O $(LDFLAGS) iozone_hpux_no.o libbif.o -o iozone

#
# GNU 'C' compiler Linux build with threads, largefiles, async I/O 
#
linux:	iozone_linux.o libasync.o libbif.o fileop_linux.o
	$(CC)  -O3 $(LDFLAGS) iozone_linux.o libasync.o libbif.o -lpthread \
		-lrt -o iozone
	$(CC)  -O3 -Dlinux fileop_linux.o -o fileop

#
# GNU 'C' compiler Linux build for powerpc chip with threads, largefiles, async I/O 
#
linux-powerpc: iozone_linux-powerpc.o  libbif.o libasync.o
	$(CC) -O3 $(LDFLAGS) iozone_linux-powerpc.o libasync.o \
		libbif.o -lpthread  -lrt -o iozone
#
# GNU 'C' compiler Linux build for sparc chip with threads, largefiles, async I/O 
#
linux-sparc: iozone_linux-sparc.o  libbif.o libasync.o
	$(CC) -O3 $(LDFLAGS) iozone_linux-sparc.o libasync.o libbif.o \
		-lpthread -lrt -o iozone

#
# GNU 'C' compiler Linux build with threads, largefiles, async I/O 
#
linux-ia64:	iozone_linux-ia64.o  libbif.o libasync.o
	$(CC) -O3 $(LDFLAGS) iozone_linux-ia64.o libbif.o libasync.o \
		-lrt -lpthread -o iozone

#
# GNU 'C' compiler Linux build for powerpc chip with threads, largefiles, async I/O 
#
linux-powerpc64: iozone_linux-powerpc64.o  libbif.o libasync.o
	$(CC) -O3 -Dunix -DHAVE_ANSIC_C -DSHARED_MEM -DASYNC_IO \
		-D_LARGEFILE64_SOURCE -Dlinux \
		iozone_linux-powerpc64.o libasync.o libbif.o -lpthread \
		-lrt -o iozone
		
#
# GNU 'C' compiler Linux build with threads, largefiles, async I/O
#
linux-arm:	iozone_linux-arm.o  libbif.o libasync.o
	$(CC) -O3 $(LDFLAGS) iozone_linux-arm.o libbif.o libasync.o \
		-lrt -lpthread -o iozone

#
# GNU 'C' compiler Linux build with threads, largefiles, async I/O 
#
linux-AMD64:	iozone_linux-AMD64.o  libbif.o libasync.o
	$(CC)  -O3 $(LDFLAGS) iozone_linux-AMD64.o libbif.o libasync.o \
		-lrt -lpthread -o iozone

#
# GNU 'C' compiler Linux build with S/390, threads, largfiles, async I/O
#
linux-S390:	iozone_linux-s390.o libbif.o libasync.o
	$(CC)  -O2 $(LDFLAGS) -lpthread -lrt iozone_linux-s390.o \
		libbif.o libasync.o -o iozone

#
# GNU 'C' compiler Linux build with S/390, threads, largfiles, async I/O
#
linux-S390X:	iozone_linux-s390x.o libbif.o libasync.o
	$(CC)  -O2 $(LDFLAGS) -lpthread -lrt iozone_linux-s390x.o \
		libbif.o libasync.o -o iozone


# 
# AIX
# I would have built with ASYNC_IO but the AIX machine does not have 
# POSIX 1003.1b compliant async I/O header files.  Has threads, no
# largefile support.
# 
AIX:	iozone_AIX.o  libbif.o  
	$(CC)  -O $(LDFLAGS) iozone_AIX.o libbif.o \
		-lpthreads -o iozone

# 
# AIX-LF
# I would have built with ASYNC_IO but the AIX machine does not have 
# POSIX 1003.1b compliant async I/O header files.  Has threads, and
# largefile support.
# 
AIX-LF:	iozone_AIX-LF.o  libbif.o  
	$(CC)  -O $(LDFLAGS) iozone_AIX-LF.o libbif.o \
		-lpthreads -o iozone

#
# IRIX 32 bit build with threads, largefiles, async I/O 
# This would like to be in 64 bit mode but it hangs whenever in 64 bit mode.
# This version uses the 64 bit interfaces but is compiled as 32 bit code
#
IRIX64:	iozone_IRIX64.o libasyncw.o libbif.o 
	$(CC)   -32 -O $(LDFLAGS) iozone_IRIX64.o libbif.o \
		-lpthread libasyncw.o -o iozone

#
# IRIX 32 bit build with threads, No largefiles, and async I/O 
# This version uses the 32 bit interfaces and is compiled as 32 bit code
#
IRIX:	iozone_IRIX.o libasync.o libbif.o
	$(CC)  -O  -32 $(LDFLAGS) iozone_IRIX.o libbif.o -lpthread \
		libasync.o -o iozone

#
# CrayX1: 32 bit build with threads, No largefiles, and async I/O 
# This version uses the 32 bit interfaces and is compiled as 32 bit code
#
CrayX1:	iozone_CrayX1.o libasync.o libbif.o
	$(CC)  -O  $(LDFLAGS) iozone_CrayX1.o libbif.o \
		-lpthread libasyncw.o -o iozone

#
# SPP-UX 32 bit build with threads, No largefiles, and No async I/O, 
# pread extensions
# For older SPP-UX machines with 9.05 compatibility
#
sppux:	iozone_sppux.o  libbif.o
	$(NACC)  -O $(LDFLAGS) iozone_sppux.o  libbif.o \
	-Wl,+parallel -lcnx_syscall -lpthread -lail -o iozone

#
# SPP-UX 32 bit build with threads, No largefiles, and No async I/O, pread 
# extensions
# For Newer SPP-UX machines with 10.01 compatibility
#
sppux-10.1:	iozone_sppux-10.1.o libbif.o
	$(NACC) -O $(LDFLAGS) iozone_sppux-10.1.o libbif.o \
	 -lcnx_syscall  -Wl,+parallel -lpthread -lail -o iozone

#
# SPP-UX 32 bit build with threads, No largefiles, and No async I/O, pread 
# extensions
# For Newer SPP-UX machines with 10.01 compatibility, and no ansi 'C' compiler.
#
sppux_no_ansi-10.1:	iozone_sppux_no-10.1.o libbif.o
	$(CCS)  -O $(LDFLAGS) iozone_sppux_no-10.1.o libbif.o \
		-Wl,+parallel -lcnx_syscall  \
		-lpthread -lail -o iozone

#
# Convex 'C' series 32 bit build with No threads, No largefiles, and No async I/O
#
convex:	iozone_convex.o libbif.o
	$(CC) -O $(LDFLAGS)iozone_convex.o libbif.o -o iozone

#
# Solaris 32 bit build with threads, largefiles, and async I/O
#
Solaris:	iozone_solaris.o libasync.o libbif.o 
	$(CC)  -O $(LDFLAGS) iozone_solaris.o libasync.o libbif.o \
		-lthread -lpthread -lposix4 -lnsl -laio -lsocket \
		-o iozone

#
# Solaris 32 bit build with threads, largefiles, and async I/O
#
Solaris7gcc:	iozone_solaris7gcc.o libasync7.o libbif7.o 
	$(GCC)  -O $(LDFLAGS) iozone_solaris7gcc.o libasync7.o libbif7.o \
		-lthread -lpthread -lposix4 -lnsl -laio \
		-lsocket -o iozone
#
# Solaris 32 bit build with threads, largefiles, and async I/O
#
Solaris10gcc:	iozone_solaris10gcc.o libasync10.o libbif10.o 
	$(GCC)  -O $(LDFLAGS) iozone_solaris10gcc.o libasync10.o libbif10.o \
		-lthread -lpthread -lposix4 -lnsl -laio \
		-lsocket -o iozone


#
# Solaris 2.6 (32 bit) build with no threads, no largefiles, and no async I/O
#
Solaris-2.6:	iozone_solaris-2.6.o libbif.o 
	$(CC)  -O $(LDFLAGS) iozone_solaris-2.6.o libbif.o \
		-lnsl -laio -l socket -o iozone

#
# Solaris 64 bit build with threads, largefiles, and async I/O
#
Solaris8-64: iozone_solaris8-64.o libasync.o libbif.o
	$(CC) $(LDFLAGS) -fast -xtarget=generic64 -v iozone_solaris8-64.o \
		libasync.o libbif.o -lthread -lpthread -lposix4 -lnsl -laio \
		-lsocket -o iozone

#
# Solaris 64 bit build with threads, largefiles, async I/O, and Vxfs
#
Solaris8-64-VXFS: iozone_solaris8-64-VXFS.o libasync.o libbif.o
	$(CC) $(LDFLAGS) -fast -xtarget=generic64 -v -I/opt/VRTSxfs/include/ 
		iozone_solaris8-64-VXFS.o libasync.o libbif.o \
		-lthread -lpthread -lposix4 -lnsl -laio \
		-lsocket -o iozone

#
# Windows build requires Cygwin development environment. You
# can get this from www.cygwin.com
# No largefiles, No async I/O
#
Windows:	iozone_windows.o libbif.o
	$(GCC) -O $(LDFLAGS) iozone_windows.o libbif.o -o iozone

#
# Uwin build requires UWIN development environment. 
# No threads, No largefiles, No async I/O
#
UWIN:	iozone_uwin.o libbif.o
	$(GCC) -O $(LDFLAGS) iozone_uwin.o libbif.o -o iozone

#
# GNU C compiler BSD/OS build with threads, largefiles, no async I/O
#

bsdi:	iozone_bsdi.o libbif.o
	$(CC) -O $(LDFLAGS) iozone_bsdi.o libbif.o -o iozone

#
# GNU C compiler FreeBSD build with no threads, no largefiles, no async I/O
#

freebsd:	iozone_freebsd.o libbif.o
	$(CC) $(LDFLAGS) iozone_freebsd.o libbif.o -o iozone

#
# GNU C compiler MacosX build with no threads, no largefiles, no async I/O
#

macosx:	iozone_macosx.o libbif.o
	$(CC) -O $(LDFLAGS) iozone_macosx.o libbif.o -o iozone
#
#
# GNU C compiler OpenBSD build with no threads, no largefiles, no async I/O
#

openbsd:	iozone_openbsd.o libbif.o
	$(CC) -O $(LDFLAGS) iozone_openbsd.o libbif.o -o iozone

#
# GNU C compiler OpenBSD build with threads, no largefiles, no async I/O
#

openbsd-threads:	iozone_openbsd-threads.o libbif.o
	$(CC) -O $(LDFLAGS) -pthread iozone_openbsd-threads.o \
		libbif.o -o iozone

#
# GNU C compiler OSFV3 build 
# Has threads and async I/O but no largefiles.
#

OSFV3:	iozone_OSFV3.o libbif.o libasync.o
	$(CC) -O $(LDFLAGS) iozone_OSFV3.o libbif.o \
		-lpthreads libasync.o -laio -o iozone

#
# GNU C compiler OSFV4 build 
# Has threads and async I/O but no largefiles.
#

OSFV4:	iozone_OSFV4.o libbif.o libasync.o
	$(CC) -O $(LDFLAGS) iozone_OSFV4.o libbif.o -lpthread \
		libasync.o -laio -o iozone

#
# GNU C compiler OSFV5 build 
# Has threads and async I/O but no largefiles.
#

OSFV5:	iozone_OSFV5.o libbif.o libasync.o
	$(CC) -O $(LDFLAGS) iozone_OSFV5.o libbif.o -lpthread \
		libasync.o -laio -o iozone

#
# GNU C compiler TRU64 build 
# Has threads and async I/O but no largefiles.
#

TRU64:	iozone_TRU64.o libbif.o libasync.o
	$(CC) -O $(LDFLAGS) iozone_TRU64.o libbif.o -lpthread \
		libasync.o -laio -o iozone

#
# GNU Generic build with no threads, no largefiles, no async I/O
# for SCO
# Note:	Be sure you have the latest patches for SCO's Openserver
# or you will get warnings about timer problems.
#

SCO:	iozone_SCO.o  libbif.o
	$(GCC) -O $(LDFLAGS) iozone_SCO.o -lsocket -s libbif.o -o iozone


#
# GNU build with threads, largefiles, async I/O
# for SCO Unixware 5 7.1.1 i386 x86at SCO UNIX SVR5
# Note: Be sure you have the latest patches for SCO's Openserver
# or you will get warnings about timer problems.
#

SCO_Unixware_gcc:	iozone_SCO_Unixware_gcc.o  libbif.o libasync.o
	$(GCC) -O $(LDFLAGS) iozone_SCO_Unixware_gcc.o libbif.o libasync.o \
		-lsocket -lthread -o iozone

#
# GNU C compiler NetBSD build with no threads, no largefiles, no async I/O
#

netbsd:	iozone_netbsd.o  libbif.o
	$(CC) -O $(LDFLAGS) iozone_netbsd.o libbif.o -o iozone

#
#
# Now for the machine specific stuff
#

iozone_hpux.o:	iozone.c libbif.c
	@echo ""
	@echo "Building iozone for HP-UX (9.05)"
	@echo ""
	$(C89) +e -c -O -Dunix -D_HPUX_SOURCE -DHAVE_ANSIC_C -DNO_THREADS \
		-DNAME='"hpux"' $(CFLAGS) iozone.c  -o iozone_hpux.o
	$(C89) +e -c -O -Dunix -D_HPUX_SOURCE -DHAVE_ANSIC_C -DNO_THREADS \
		-DZBIG_ENDIAN $(CFLAGS) libbif.c -o libbif.o

iozone_hpux-11.0.o:	iozone.c libasync.c libbif.c
	@echo ""
	@echo "Building iozone for HP-UX (11.0)"
	@echo ""
	$(CC) -c +O3 +Oparallel -Dunix -D_LARGEFILE64_SOURCE  -D_HPUX_SOURCE \
		-DNAME='"hpux-11.0"' -DHAVE_ANSIC_C -DASYNC_IO -DVXFS $(CFLAGS) \
		iozone.c  -o iozone_hpux-11.0.o
	$(CC) -c  +O3 +Oparallel -Dunix -D_LARGEFILE64_SOURCE  -D_HPUX_SOURCE \
		-DHAVE_ANSIC_C -DASYNC_IO -DVXFS $(CFLAGS) libasync.c  -o libasync.o
	$(CC) -c  +O3 +Oparallel -Dunix -D_LARGEFILE64_SOURCE  -D_HPUX_SOURCE \
		-DHAVE_ANSIC_C -DASYNC_IO -DVXFS -DZBIG_ENDIAN $(CFLAGS) libbif.c  -o libbif.o

iozone_hpux-11.0w.o:	iozone.c libasync.c libbif.c
	@echo ""
	@echo "Building iozone for HP-UX (11.0w)"
	@echo ""
	$(CC) -c +DD64 +O3 -Dunix -D_LARGEFILE64_SOURCE  -D_HPUX_SOURCE \
	    -DNAME='"hpux-11.0w"' -DHAVE_ANSIC_C -DASYNC_IO -DVXFS $(CFLAGS) iozone.c \
	     -o iozone_hpux-11.0w.o
	$(CC) -c +DD64 +O3 -Dunix -D_LARGEFILE64_SOURCE  -D_HPUX_SOURCE \
		-DHAVE_ANSIC_C -DASYNC_IO -DVXFS $(CFLAGS) libasync.c  -o libasyncw.o
	$(CC) -c +DD64 +O3 -Dunix -D_LARGEFILE64_SOURCE  -D_HPUX_SOURCE \
		-DHAVE_ANSIC_C -DASYNC_IO -DVXFS -DZBIG_ENDIAN $(CFLAGS) libbif.c  -o libbif.o

iozone_hpuxs-11.0.o:	iozone.c libasync.c libbif.c
	@echo ""
	@echo "Building simple iozone for HP-UX (11.0)"
	@echo ""
	$(CC) -c  -Dunix -D_LARGEFILE64_SOURCE  -D_HPUX_SOURCE -DHAVE_ANSIC_C \
		-DNAME='"hpuxs-11.0"' -DASYNC_IO -DVXFS -DHAVE_PREAD $(CFLAGS) iozone.c  \
		-o iozone_hpuxs-11.0.o
	$(CC) -c  -Dunix -D_LARGEFILE64_SOURCE  -D_HPUX_SOURCE -DHAVE_ANSIC_C \
		-DASYNC_IO  -DVXFS $(CFLAGS) libasync.c  -o libasync.o 
	$(CC) -c  -Dunix -D_LARGEFILE64_SOURCE  -D_HPUX_SOURCE -DHAVE_ANSIC_C \
		-DASYNC_IO -DVXFS -DZBIG_ENDIAN $(CFLAGS) libbif.c  -o libbif.o 

fileop_hpuxs-11.0.o:	fileop.c
	@echo ""
	@echo "Building simple fileop for HP-UX (11.0)"
	@echo ""
	$(CC) -c  $(CFLAGS) fileop.c  -o fileop_hpuxs-11.0.o 

iozone_hpuxs-11.0w.o:	iozone.c libasync.c libbif.c
	@echo ""
	@echo "Building simple iozone for HP-UX (11.0w)"
	@echo ""
	$(CC) -c +DD64 -Dunix -D_LARGEFILE64_SOURCE  -D_HPUX_SOURCE \
		-DNAME='"hpuxs-11.0w"' -DHAVE_ANSIC_C -DASYNC_IO -DVXFS \
		-DHAVE_PREAD $(CFLAGS) iozone.c  -o iozone_hpuxs-11.0w.o
	$(CC) -c +DD64 -Dunix -D_LARGEFILE64_SOURCE  -D_HPUX_SOURCE \
		-DHAVE_ANSIC_C -DASYNC_IO -DVXFS $(CFLAGS) libasync.c  -o libasyncw.o 
	$(CC) -c +DD64 -Dunix -D_LARGEFILE64_SOURCE  -D_HPUX_SOURCE \
		-DHAVE_ANSIC_C -DASYNC_IO -DVXFS -DZBIG_ENDIAN $(CFLAGS) libbif.c  -o libbif.o 

iozone_hpux-10.1.o:	iozone.c libbif.c
	@echo ""
	@echo "Building iozone for HP-UX (10.1)"
	@echo ""
	$(C89) +e -c -O -Dunix -D_HPUX_SOURCE -DHAVE_ANSIC_C -DNO_THREADS \
		-DNAME='"hpux-10.1"' $(CFLAGS) iozone.c  -o iozone_hpux-10.1.o
	$(C89) +e -c -O -Dunix -D_HPUX_SOURCE -DHAVE_ANSIC_C -DNO_THREADS \
		-DZBIG_ENDIAN $(CFLAGS) libbif.c  -o libbif.o

iozone_hpux-10.20.o:	iozone.c libbif.c
	@echo ""
	@echo "Building iozone for HP-UX (10.20)"
	@echo ""
	$(C89) +e -c -O -Dunix -D_HPUX_SOURCE -DHAVE_ANSIC_C -DNO_THREADS \
		-DNAME='"hpux-10.20"' $(CFLAGS) iozone.c  -o iozone_hpux-10.20.o
	$(C89) +e -c -O -Dunix -D_HPUX_SOURCE -DHAVE_ANSIC_C -DNO_THREADS \
		-DZBIG_ENDIAN $(CFLAGS) libbif.c  -o libbif.o

iozone_ghpux.o:	iozone.c libbif.c
	@echo ""
	@echo "Building iozone for GCC HP-UX (9.05) "
	@echo ""
	$(GCC) -c -O -Dunix -D_HPUX_SOURCE -DHAVE_ANSIC_C -DNO_THREADS $(CFLAGS) iozone.c \
		-DNAME='"h=ghpux"' -o iozone_ghpux.o
	$(GCC) -c -O -Dunix -D_HPUX_SOURCE -DHAVE_ANSIC_C -DNO_THREADS -DZBIG_ENDIAN \
		$(CFLAGS) libbif.c -o libbif.o

iozone_generic.o:	iozone.c libbif.c
	@echo ""
	@echo "Building iozone Generic "
	@echo ""
	$(CC) -c -O -Dgeneric -Dunix -DHAVE_ANSIC_C -DNO_THREADS \
		-DNAME='"Generic"' $(CFLAGS) iozone.c -o iozone_generic.o
	$(CC) -c -O -Dgeneric -Dunix -DHAVE_ANSIC_C -DNO_THREADS \
		-DZBIG_ENDIAN $(CFLAGS) libbif.c -o libbif.o

iozone_hpux_no.o:	iozone.c libbif.c
	@echo ""
	@echo "Building iozone for HP-UX (9.05) without ansi compiler"
	@echo ""
	$(NACC) -c -O -Dunix -D_HPUX_SOURCE -DNO_THREADS iozone.c \
		-DNAME='"hpux_no_ansi"' -o iozone_hpux_no.o
	$(NACC) -c -O -Dunix -D_HPUX_SOURCE -DNO_THREADS \
		-DZBIG_ENDIAN libbif.c -o libbif.o

iozone_hpux_no-10.1.o:	iozone.c
	@echo ""
	@echo "Building iozone for HP-UX (10.1) without ansi compiler"
	@echo ""
	$(NACC) -c -O -Dunix -D_HPUX_SOURCE -DNO_THREADS iozone.c \
		-DNAME='"hpux_no_ansi_10.1"' -o iozone_hpux_no-10.1.o
	$(NACC) -c -O -Dunix -D_HPUX_SOURCE -DNO_THREADS \
		-DZBIG_ENDIAN libbif.c -o libbif.o

iozone_linux-powerpc.o:	iozone.c libbif.c libasync.c
	@echo ""
	@echo "Building iozone for Linux PowerPC"
	@echo ""
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DDONT_HAVE_O_DIRECT \
		-DSHARED_MEM -Dlinux -D_LARGEFILE64_SOURCE $(CFLAGS) iozone.c \
		-DNAME='"linux-powerpc"' -o iozone_linux-powerpc.o
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D_LARGEFILE64_SOURCE \
		-DSHARED_MEM -Dlinux $(CFLAGS) libbif.c -o libbif.o
	$(CC) -c -O3 -Dunix -Dlinux -DHAVE_ANSIC_C -DASYNC_IO \
		-D_LARGEFILE64_SOURCE $(CFLAGS) libasync.c  -o libasync.o 

iozone_linux-powerpc64.o:	iozone.c libbif.c libasync.c
	@echo ""
	@echo "Building iozone for Linux PowerPC64"
	@echo ""
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DNAME='"linux-powerpc64"' \
		-DSHARED_MEM -Dlinux -D_LARGEFILE64_SOURCE $(CFLAGS) iozone.c \
		-o iozone_linux-powerpc64.o
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D_LARGEFILE64_SOURCE \
		-DSHARED_MEM -Dlinux $(CFLAGS) libbif.c -o libbif.o
	$(CC) -c -O3 -Dunix -Dlinux -DHAVE_ANSIC_C -DASYNC_IO \
		-D_LARGEFILE64_SOURCE $(CFLAGS) libasync.c  -o libasync.o 
		

iozone_linux-sparc.o:	iozone.c libbif.c libasync.c
	@echo ""
	@echo "Building iozone for Linux Sparc"
	@echo ""
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DDONT_HAVE_O_DIRECT \
		-DSHARED_MEM -Dlinux -D_LARGEFILE64_SOURCE $(CFLAGS) iozone.c \
		-DNAME='"linux-sparc"' -o iozone_linux-sparc.o
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D_LARGEFILE64_SOURCE \
		-DSHARED_MEM -Dlinux $(CFLAGS) libbif.c -o libbif.o
	$(CC) -c -O3 -Dunix -Dlinux -DHAVE_ANSIC_C -DASYNC_IO \
		-D_LARGEFILE64_SOURCE $(CFLAGS) libasync.c  -o libasync.o 

iozone_linux.o:	iozone.c libbif.c libasync.c
	@echo ""
	@echo "Building iozone for Linux"
	@echo ""
	$(CC) -Wall -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DHAVE_PREAD \
		-DSHARED_MEM -Dlinux -D_LARGEFILE64_SOURCE $(CFLAGS) iozone.c \
		-DNAME='"linux"' -o iozone_linux.o
	$(CC) -Wall -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D_LARGEFILE64_SOURCE \
		-DSHARED_MEM -Dlinux $(CFLAGS) libbif.c -o libbif.o
	$(CC) -Wall -c -O3 -Dunix -Dlinux -DHAVE_ANSIC_C -DASYNC_IO \
		-D_LARGEFILE64_SOURCE $(CFLAGS) libasync.c  -o libasync.o 

fileop_linux.o:	fileop.c
	@echo ""
	@echo "Building fileop for Linux"
	@echo ""
	$(CC) -Wall -c -O3 $(CFLAGS) fileop.c -o fileop_linux.o

iozone_linux-ia64.o:	iozone.c libbif.c libasync.c
	@echo ""
	@echo "Building iozone for Linux-ia64"
	@echo ""
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DNAME='"linux-ia64"' \
		-DSHARED_MEM -Dlinux -D_LARGEFILE64_SOURCE $(CFLAGS) iozone.c \
		-o iozone_linux-ia64.o
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D_LARGEFILE64_SOURCE \
		-DSHARED_MEM -Dlinux $(CFLAGS) libbif.c -o libbif.o
	$(CC) -c -O3 -Dunix -Dlinux -DHAVE_ANSIC_C -DASYNC_IO \
		-D_LARGEFILE64_SOURCE $(CFLAGS) libasync.c  -o libasync.o 

iozone_linux-arm.o:	iozone.c libbif.c libasync.c
	@echo ""
	@echo "Building iozone for Linux-arm"
	@echo ""
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DHAVE_PREAD \
		-DNAME='"linux-arm"' -DLINUX_ARM -DSHARED_MEM \
		-Dlinux -D_LARGEFILE64_SOURCE $(CFLAGS) iozone.c \
		-o iozone_linux-arm.o
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D_LARGEFILE64_SOURCE \
		-DSHARED_MEM -DZBIG_ENDIAN2 -Dlinux $(CFLAGS) libbif.c -o libbif.o
	$(CC) -c -O3 -Dunix -Dlinux -DHAVE_ANSIC_C -DASYNC_IO \
		-D_LARGEFILE64_SOURCE $(CFLAGS) libasync.c  -o libasync.o

iozone_linux-AMD64.o:	iozone.c libbif.c libasync.c
	@echo ""
	@echo "Building iozone for Linux-AMD64"
	@echo ""
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DNAME='"linux-AMD64"' \
		-D__AMD64__ -DSHARED_MEM -Dlinux -D_LARGEFILE64_SOURCE \
		$(CFLAGS) iozone.c \
		-o iozone_linux-AMD64.o
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D_LARGEFILE64_SOURCE \
		-DSHARED_MEM -Dlinux $(CFLAGS) libbif.c -o libbif.o
	$(CC) -c -O3 -Dunix -Dlinux -DHAVE_ANSIC_C -DASYNC_IO \
		-D_LARGEFILE64_SOURCE $(CFLAGS) libasync.c  -o libasync.o 

iozone_linux-s390.o:	iozone.c libbif.c libasync.c
	@echo ""
	@echo "Building iozone for Linux-s390"
	@echo ""
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DHAVE_PREAD \
		-DSHARED_MEM -Dlinux -D_LARGEFILE64_SOURCE $(CFLAGS) iozone.c \
		-DNAME='"linux-s390"' -o iozone_linux-s390.o
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DSHARED_MEM -Dlinux \
		-DZBIG_ENDIAN -D_LARGEFILE64_SOURCE $(CFLAGS) libbif.c -o libbif.o
	$(CC) -c -O3 -Dunix -Dlinux -DHAVE_ANSIC_C -DASYNC_IO \
		-D_LARGEFILE64_SOURCE $(CFLAGS) libasync.c -o libasync.o

iozone_linux-s390x.o:	iozone.c libbif.c libasync.c
	@echo ""
	@echo "Building iozone for Linux-s390x"
	@echo ""
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DHAVE_PREAD \
		-DSHARED_MEM -Dlinux -D_LARGEFILE64_SOURCE $(CFLAGS) iozone.c \
		-DNAME='"linux-s390x"' -o iozone_linux-s390x.o
	$(CC) -c -O3 -Dunix -DHAVE_ANSIC_C -DSHARED_MEM -Dlinux \
		-DZBIG_ENDIAN -D_LARGEFILE64_SOURCE $(CFLAGS) libbif.c -o libbif.o
	$(CC) -c -O3 -Dunix -Dlinux -DHAVE_ANSIC_C -DASYNC_IO \
		-D_LARGEFILE64_SOURCE $(CFLAGS) libasync.c -o libasync.o


iozone_AIX.o:	iozone.c libbif.c 
	@echo ""
	@echo "Building iozone for AIX"
	@echo ""
	$(CC) -c -O -D__AIX__ -D_NO_PROTO -Dunix -DHAVE_ANSIC_C  \
		-DNAME='"AIX"' -DSHARED_MEM  $(CFLAGS) iozone.c -o iozone_AIX.o
	$(CC) -c -O -D__AIX__ -D_NO_PROTO -Dunix -DHAVE_ANSIC_C  \
		-DZBIG_ENDIAN -DSHARED_MEM $(CFLAGS) libbif.c -o libbif.o

iozone_AIX-LF.o:	iozone.c libbif.c 
	@echo ""
	@echo "Building iozone for AIX with Large files"
	@echo ""
	$(CC) -c -O -D__AIX__ -D_NO_PROTO -Dunix -DHAVE_ANSIC_C  \
		-DSHARED_MEM  -D_LARGEFILE64_SOURCE -D_LARGE_FILES \
		-DNAME='"AIX-LF"' $(CFLAGS) iozone.c -o iozone_AIX-LF.o
	$(CC) -c -O -D__AIX__ -D_NO_PROTO -Dunix -DHAVE_ANSIC_C  \
		-DSHARED_MEM -D_LARGEFILE64_SOURCE -D_LARGE_FILES \
		-DZBIG_ENDIAN $(CFLAGS) libbif.c -o libbif.o

iozone_solaris.o:	iozone.c libasync.c libbif.c
	@echo ""
	@echo "Building iozone for Solaris"
	@echo ""
	$(CC) -c -O -Dunix -DHAVE_ANSIC_C -DASYNC_IO \
		-D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Dsolaris \
		-DNAME='"Solaris"' $(CFLAGS) iozone.c -o iozone_solaris.o
	$(CC) -O -c  -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D__LP64__ \
		-D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Dsolaris \
		$(CFLAGS) libasync.c -o libasync.o
	$(CC) -O -c  -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D__LP64__ \
		-D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Dsolaris \
		-DZBIG_ENDIAN $(CFLAGS) libbif.c -o libbif.o

iozone_solaris7gcc.o:	iozone.c libasync.c libbif.c
	@echo ""
	@echo "Building iozone for Solaris7gcc"
	@echo ""
	$(GCC) -O -c  -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D__LP64__ \
		-D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Dsolaris \
		-DNAME='"Solaris7gcc"' $(CFLAGS) libasync.c -o libasync7.o
	$(GCC) -O -c  -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D__LP64__ \
		-D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Dsolaris \
		-DZBIG_ENDIAN $(CFLAGS) libbif.c -o libbif7.o
	$(GCC) -c -O -Dunix -DHAVE_ANSIC_C -DASYNC_IO \
		-D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Dsolaris \
		-DNAME='"Solaris7gcc"' $(CFLAGS) iozone.c -o iozone_solaris7gcc.o

iozone_solaris10gcc.o:  iozone.c libbif.c
	@echo ""
	@echo "Building iozone for Solaris10gcc"
	@echo ""
	$(GCC) -O -c  -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D__LP64__ \
                -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Dsolaris \
                $(CFLAGS) libbif.c -o libbif10.o
	$(GCC) -O -c  -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D__LP64__ \
                -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Dsolaris \
                -DNAME='"Solaris10gcc"' $(CFLAGS) libasync.c -o libasync10.o
	$(GCC) -c -O -Dunix -DHAVE_ANSIC_C -DASYNC_IO \
                -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Dsolaris \
                -DNAME='"Solaris10gcc"' $(CFLAGS) iozone.c -o iozone_solaris10gcc.o

#
#		-DSHARED_MEM -Dsolaris libasync.c -o libasync.o
#		-DSHARED_MEM -Dsolaris iozone.c -o iozone_solaris.o
#

iozone_solaris-2.6.o:	iozone.c libbif.c
	@echo ""
	@echo "Building iozone for Solaris-2.6"
	@echo ""
	$(CC) -c -O -Dunix -DHAVE_ANSIC_C -DNO_THREADS \
		-DNAME='"Solaris-2.6"' -Dsolaris  $(CFLAGS) iozone.c -o iozone_solaris-2.6.o
	$(CC) -O -c  -Dunix -DHAVE_ANSIC_C \
		-Dsolaris -DZBIG_ENDIAN $(CFLAGS) libbif.c -o libbif.o

iozone_solaris8-64.o: iozone.c libasync.c libbif.c
	@echo ""
	@echo "Building iozone for Solaris8-64"
	@echo ""
	$(CC) -fast -xtarget=generic64 -v -c -Dunix -DHAVE_ANSIC_C -DASYNC_IO \
		-D__LP64__ -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 \
		-DNAME='"Solaris8-64"' -Dsolaris -DHAVE_PREAD \
		$(CFLAGS) iozone.c -o iozone_solaris8-64.o
	$(CC) -fast -xtarget=generic64 -v -c  -Dunix -DHAVE_ANSIC_C -DASYNC_IO \
		-D__LP64__ -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 \
		-Dsolaris -DHAVE_PREAD $(CFLAGS) libasync.c -o libasync.o
	$(CC) -fast -xtarget=generic64 -v -c  -Dunix -DHAVE_ANSIC_C -DASYNC_IO \
		-D__LP64__ -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 \
		-Dsolaris -DZBIG_ENDIAN -DHAVE_PREAD $(CFLAGS) libbif.c -o libbif.o

iozone_solaris8-64-VXFS.o: iozone.c libasync.c libbif.c
	@echo ""
	@echo "Building iozone for Solaris8-64-VXFS"
	@echo ""
	$(CC) -fast -xtarget=generic64 -v -c -I/opt/VRTSvxfs/include/ -Dunix \
		-DVXFS -DHAVE_ANSIC_C -DASYNC_IO \
		-D__LP64__ -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 \
		-DNAME='"Solaris8-64"' -Dsolaris -DHAVE_PREAD \
		$(CFLAGS) iozone.c -o iozone_solaris8-64-VXFS.o
	$(CC) -fast -xtarget=generic64 -v -c  -I/opt/VRTSvxfs/include/ -Dunix \
		-DVXFS -DHAVE_ANSIC_C -DASYNC_IO \
		-D__LP64__ -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 \
		-Dsolaris -DHAVE_PREAD $(CFLAGS) libasync.c -o libasync.o
	$(CC) -fast -xtarget=generic64 -v -c -I/opt/VRTSvxfs/include/ -Dunix \
		-DVXFS -DHAVE_ANSIC_C -DASYNC_IO \
		-D__LP64__ -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 \
		-Dsolaris -DZBIG_ENDIAN -DHAVE_PREAD $(CFLAGS) libbif.c -o libbif.o

iozone_windows.o:	iozone.c libasync.c libbif.c
	@echo ""
	@echo "Building iozone for Windows (No async I/O)"
	@echo ""
	$(GCC) -c -O -Dunix -DHAVE_ANSIC_C -DNO_MADVISE  \
		-DWindows $(CFLAGS) iozone.c -o iozone_windows.o
	$(GCC) -c -O -Dunix -DHAVE_ANSIC_C -DNO_MADVISE \
		-DWindows $(CFLAGS) libbif.c -o libbif.o

iozone_uwin.o:	iozone.c libbif.c
	@echo ""
	@echo "Building iozone for UWIN (No threads, No async I/O)"
	@echo ""
	$(GCC) -c -O -DUWIN -Dunix -DHAVE_ANSIC_C -DNO_THREADS  -DNO_MADVISE \
		-DNAME='"UWIN"' -DSHARED_MEM -DWindows $(CFLAGS) iozone.c -o iozone_uwin.o
	$(GCC) -c -O -DUWIN -Dunix -DHAVE_ANSIC_C -DNO_THREADS  -DNO_MADVISE \
		-DSHARED_MEM -DWindows $(CFLAGS) libbif.c -o libbif.o

iozone_IRIX64.o:	iozone.c libasync.c libbif.c
	@echo ""
	@echo "Building iozone for IRIX64"
	@echo ""
	$(CC) -32 -O -c  -Dunix -DHAVE_ANSIC_C -D_LARGEFILE64_SOURCE -DASYNC_IO \
		-DNAME='"IRIX64"' -DIRIX64 -DSHARED_MEM $(CFLAGS) iozone.c -o iozone_IRIX64.o
	$(CC) -32 -O -c  -Dunix -DHAVE_ANSIC_C -D_LARGEFILE64_SOURCE -DASYNC_IO \
		-DIRIX64 -DSHARED_MEM $(CFLAGS) libasync.c -o libasyncw.o
	$(CC) -32 -O -c  -Dunix -DHAVE_ANSIC_C -D_LARGEFILE64_SOURCE -DASYNC_IO \
		-DIRIX64 -DSHARED_MEM -DZBIG_ENDIAN $(CFLAGS) libbif.c -o libbif.o

iozone_IRIX.o:	iozone.c libasync.c libbif.c
	@echo ""
	@echo "Building iozone for IRIX"
	@echo ""
	$(CC)  -O -32 -c  -Dunix -DHAVE_ANSIC_C -DASYNC_IO \
		-DNAME='"IRIX"' -DIRIX -DSHARED_MEM $(CFLAGS) iozone.c -o iozone_IRIX.o
	$(CC)  -O -32 -c  -Dunix -DHAVE_ANSIC_C -DASYNC_IO \
		-DIRIX -DSHARED_MEM $(CFLAGS) libasync.c -o libasync.o
	$(CC)  -O -32 -c  -Dunix -DHAVE_ANSIC_C -DASYNC_IO \
		-DIRIX -DSHARED_MEM -DZBIG_ENDIAN $(CFLAGS) libbif.c -o libbif.o

iozone_CrayX1.o: iozone.c libasync.c libbif.c
	@echo ""
	@echo "Building iozone for CrayX1"
	@echo ""
	$(CC)  -O -c  -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D_LARGEFILE64_SOURCE \
		-DNAME='"CrayX1"' -DIRIX64 -DSHARED_MEM -D__CrayX1__ \
		$(CFLAGS) iozone.c -o iozone_CrayX1.o
	$(CC)  -O -c  -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D_LARGEFILE64_SOURCE \
		-DIRIX64 -DSHARED_MEM -D__CrayX1__ \
		$(CFLAGS) libasync.c -o libasyncw.o
	$(CC)  -O -c  -Dunix -DHAVE_ANSIC_C -DASYNC_IO -D_LARGEFILE64_SOURCE \
		-DIRIX64 -DSHARED_MEM -DZBIG_ENDIAN -D__CrayX1__ $(CFLAGS) libbif.c \
		-o libbif.o

iozone_sppux.o:	iozone.c libbif.c
	@echo ""
	@echo "Building iozone for SPP-UX using Convex compiler"
	@echo ""
	$(NACC) -c  -O -Dunix -D_HPUX_SOURCE -D__convex_spp \
		-DNAME='"sppux"' -Wl,+parallel -DHAVE_ANSIC_C -DHAVE_PREAD \
		-DHAVE_PREADV $(CFLAGS) iozone.c -o iozone_sppux.o
	$(NACC) -O -Dunix -D_HPUX_SOURCE -D__convex_spp \
		-Wl,+parallel -DHAVE_ANSIC_C -DHAVE_PREAD -DHAVE_PREADV -DZBIG_ENDIAN \
		$(CFLAGS) libbif.c -o libbif.o

iozone_sppux-10.1.o:	iozone.c libbif.c
	@echo ""
	@echo "Building iozone for SPP-UX using HP ansic compiler"
	@echo ""
	$(NACC) -c -O -Dunix -D_HPUX_SOURCE -D__convex_spp \
		-DHAVE_ANSIC_C -DHAVE_PREAD -DHAVE_PREADV $(CFLAGS) iozone.c \
		 -DNAME='"sppux-10.1"' -Wl,+parallel -o iozone_sppux-10.1.o
	$(NACC) -c -O -Dunix -D_HPUX_SOURCE -D__convex_spp \
		-DHAVE_ANSIC_C -DHAVE_PREAD -DHAVE_PREADV -DZBIG_ENDIAN \
		$(CFLAGS) libbif.c -Wl,+parallel -o libbif.o

iozone_sppux_no-10.1.o:	iozone.c libbif.c
	@echo ""
	@echo "Building iozone for SPP-UX no ANSI c compiler"
	@echo ""
	$(CCS) -c -O -Dunix -D_HPUX_SOURCE -D__convex_spp \
		-DNAME='"sppux_no_ansi_10.1"' -Wl,+parallel -DHAVE_PREAD \
		-DHAVE_PREADV $(CFLAGS) iozone.c -o iozone_sppux_no-10.1.o
	$(CCS) -c -O -Dunix -D_HPUX_SOURCE -D__convex_spp \
		-Wl,+parallel -DHAVE_PREAD -DHAVE_PREADV -DZBIG_ENDIAN $(CFLAGS) \
		libbif.c -o libbif.o

iozone_convex.o:	iozone.c libbif.c
	@echo ""
	@echo "Building iozone for Convex 'C' series"
	@echo ""
		$(CC) -c -O -Dunix -DNO_THREADS -Dbsd4_2 $(CFLAGS) iozone.c \
			-DNAME='"Convex"' -o iozone_convex.o 
		$(CC) -c -O -Dunix -DNO_THREADS -Dbsd4_2 -DZBIG_ENDIAN \
			$(CFLAGS) libbif.c -o libbif.o 

iozone_bsdi.o:	iozone.c libbif.c
	@echo ""
	@echo "Build iozone for BSD/OS"
	@echo ""
	$(CC) -c -O -Dunix -Dbsd4_4 -DHAVE_ANSIC_C \
		-DNAME='"bsdi"' $(CFLAGS) iozone.c -o iozone_bsdi.o
	$(CC) -c -O -Dunix -Dbsd4_4 -DHAVE_ANSIC_C \
		$(CFLAGS) libbif.c -o libbif.o

iozone_freebsd.o:	iozone.c libbif.c
	@echo ""
	@echo "Build iozone for FreeBSD"
	@echo ""
	$(CC) -c ${CFLAGS}  -Dunix -Dbsd4_2 -DHAVE_ANSIC_C -DNO_THREADS \
		-DNAME='"freebsd"' -DSHARED_MEM $(CFLAGS) iozone.c -o iozone_freebsd.o
	$(CC) -c ${CFLAGS} -Dunix -Dbsd4_2 -DHAVE_ANSIC_C -DNO_THREADS \
		-DSHARED_MEM $(CFLAGS) libbif.c -o libbif.o

iozone_macosx.o:	iozone.c libbif.c
	@echo ""
	@echo "Build iozone for MacOSX"
	@echo ""
	$(CC) -c -O -Dunix -Dbsd4_2 -DHAVE_ANSIC_C -DNO_THREADS \
		-DNAME='"macosx"' -DSHARED_MEM $(CFLAGS) iozone.c -o iozone_macosx.o
	$(CC) -c -O -Dunix -Dbsd4_2 -DHAVE_ANSIC_C -DNO_THREADS \
		-DSHARED_MEM $(CFLAGS) libbif.c -o libbif.o

iozone_openbsd.o:	iozone.c libbif.c
	@echo ""
	@echo "Build iozone for OpenBSD"
	@echo ""
	$(CC) -c -O -Dunix -Dbsd4_4 -DHAVE_ANSIC_C -DNO_THREADS \
		-DNAME='"openbsd"' -DSHARED_MEM $(CFLAGS) iozone.c -o iozone_openbsd.o
	$(CC) -c -O -Dunix -Dbsd4_4 -DHAVE_ANSIC_C -DNO_THREADS \
		-DSHARED_MEM $(CFLAGS) libbif.c -o libbif.o

iozone_openbsd-threads.o:	iozone.c libbif.c
	@echo ""
	@echo "Build iozone for OpenBSD with threads"
	@echo ""
	$(CC) -c -O -pthread -Dunix -Dbsd4_4 -DHAVE_ANSIC_C \
		-DNAME='"openbsd-threads"' $(CFLAGS) iozone.c \
		-o iozone_openbsd-threads.o
	$(CC) -c -O -pthread -Dunix -Dbsd4_4 -DHAVE_ANSIC_C \
		$(CFLAGS) libbif.c -o libbif.o

iozone_OSFV3.o:	iozone.c libbif.c
	@echo ""
	@echo "Build iozone for OSFV3"
	@echo ""
	$(CC) -O -c -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DOSFV3 \
		-DNAME='"OSFV3"' -DNO_PRINT_LLD -DOSF_64 $(CFLAGS) iozone.c \
		-o iozone_OSFV3.o
	$(CC) -O -c -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DOSFV3 \
		-DNO_PRINT_LLD  -DOSF_64 $(CFLAGS) libbif.c -o libbif.o
	$(CC) -O -c -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DOSFV3 \
		-DNO_PRINT_LLD -DOSF_64 $(CFLAGS) libasync.c -o libasync.o

iozone_OSFV4.o:	iozone.c libbif.c
	@echo ""
	@echo "Build iozone for OSFV4"
	@echo ""
	$(CC) -O -c -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DOSFV4 \
		-DNAME='"OSFV4"' -DNO_PRINT_LLD -DOSF_64 $(CFLAGS) iozone.c \
		-o iozone_OSFV4.o
	$(CC) -O -c -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DOSFV4 \
		-DNO_PRINT_LLD  -DOSF_64 $(CFLAGS) libbif.c -o libbif.o
	$(CC) -O -c -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DOSFV4 \
		-DNO_PRINT_LLD -DOSF_64 $(CFLAGS) libasync.c -o libasync.o

iozone_OSFV5.o:	iozone.c libbif.c
	@echo ""
	@echo "Build iozone for OSFV5"
	@echo ""
	$(CC) -O -c -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DOSFV5 \
		-DNAME='"OSFV5"' -DNO_PRINT_LLD -DOSF_64 $(CFLAGS) iozone.c \
		-o iozone_OSFV5.o
	$(CC) -O -c -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DOSFV5 \
		-DNO_PRINT_LLD  -DOSF_64 $(CFLAGS) libbif.c -o libbif.o
	$(CC) -O -c -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DOSFV5 \
		-DNO_PRINT_LLD -DOSF_64 $(CFLAGS) libasync.c -o libasync.o

iozone_TRU64.o:	iozone.c libbif.c
	@echo ""
	@echo "Build iozone for TRU64"
	@echo ""
	$(CC) -O -c -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DOSFV5 -DTRU64 -DHAVE_PREAD \
		-DNAME='"TRU64"' -DNO_PRINT_LLD -DOSF_64 -pthread $(CFLAGS) iozone.c \
		-o iozone_TRU64.o
	$(CC) -O -c -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DOSFV5 -DHAVE_PREAD \
		-DNO_PRINT_LLD  -DOSF_64 $(CFLAGS) libbif.c -o libbif.o
	$(CC) -O -c -Dunix -DHAVE_ANSIC_C -DASYNC_IO -DOSFV5 -DHAVE_PREAD \
		-DNO_PRINT_LLD -DOSF_64 $(CFLAGS) libasync.c -o libasync.o

iozone_SCO.o:	iozone.c libbif.c
	@echo ""
	@echo "Building iozone SCO "
	@echo ""
	$(GCC) -c -O -DSCO -Dunix -DHAVE_ANSIC_C -DNO_THREADS -DNO_MADVISE \
		-DNAME='"SCO"' $(CFLAGS) iozone.c -o iozone_SCO.o
	$(GCC) -c -O -DSCO -Dunix -DHAVE_ANSIC_C -DNO_THREADS -DNO_MADVISE \
		-DZBIG_ENDIAN $(CFLAGS) libbif.c -o libbif.o

iozone_SCO_Unixware_gcc.o:	iozone.c libbif.c libasync.c
	@echo ""
	@echo "Building iozone SCO_Unixware_gcc "
	@echo ""
	$(GCC) -c -O -DSCO_Unixware_gcc -Dunix -DHAVE_ANSIC_C  \
		-DASYNC_IO -D_LARGEFILE64_SOURCE $(CFLAGS) iozone.c  \
		-DNAME='"SCO_Unixware_gcc"' -o iozone_SCO_Unixware_gcc.o
	$(GCC) -c -O -DSCO_Unixware_gcc -Dunix -DHAVE_ANSIC_C  \
		-DASYNC_IO -D_LARGEFILE64_SOURCE $(CFLAGS) libbif.c -o libbif.o
	$(GCC) -c -O -DSCO_Unixware_gcc -Dunix -DHAVE_ANSIC_C  \
		-DASYNC_IO -D_LARGEFILE64_SOURCE $(CFLAGS) libasync.c -o libasync.o

iozone_netbsd.o:	iozone.c libbif.c
	@echo ""
	@echo "Building iozone NetBSD "
	@echo ""
	$(CC) -c -O -Dunix -Dbsd4_4 -DHAVE_ANSIC_C -DNO_THREADS \
		-DNAME='"netbsd"' -DSHARED_MEM $(CFLAGS) iozone.c -o iozone_netbsd.o
	$(CC) -c -O -Dunix -Dbsd4_4 -DHAVE_ANSIC_C -DNO_THREADS \
		-DSHARED_MEM $(CFLAGS) libbif.c -o libbif.o
