CC=/home/bbelleville/Work/hard/build/bin/clang -flto


top_srcdir=..
srcdir=.


include ../Make.rules


all:
	@echo "Running make from top level directory."
	cd ../; $(MAKE) all

Makefile: Makefile.in ../config.status
	cd ../ && ./config.status


.c.o:
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $<

utils: $(FTPCOUNT_OBJS) $(FTPSHUT_OBJS) $(FTPTOP_OBJS) $(FTPWHO_OBJS)

clean:
	rm -f *.o

depend:
	makedepend $(CPPFLAGS) -Y *.c 2>/dev/null
	makedepend $(CPPFLAGS) -Y -fMakefile.in *.c 2>/dev/null

# Dependancies written below

# DO NOT DELETE

ftpcount.o: utils.h ../config.h ../include/version.h ../include/options.h
ftpcount.o: ../include/default_paths.h
ftpshut.o: ../include/conf.h ../include/version.h ../config.h
ftpshut.o: ../include/default_paths.h ../include/options.h ../include/pool.h
ftpshut.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
ftpshut.o: ../include/class.h ../include/netacl.h ../include/support.h
ftpshut.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
ftpshut.o: ../include/modules.h ../include/auth.h ../include/response.h
ftpshut.o: ../include/timers.h ../include/inet.h ../include/child.h
ftpshut.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
ftpshut.o: ../include/help.h ../include/feat.h ../include/ftp.h
ftpshut.o: ../include/log.h ../include/parser.h ../include/xferlog.h
ftpshut.o: ../include/scoreboard.h ../include/data.h ../include/display.h
ftpshut.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
ftpshut.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
ftpshut.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
ftptop.o: utils.h ../config.h ../include/version.h ../include/options.h
ftptop.o: ../include/default_paths.h
ftpwho.o: utils.h ../config.h ../include/version.h ../include/options.h
ftpwho.o: ../include/default_paths.h
misc.o: ../include/conf.h ../include/version.h ../config.h
misc.o: ../include/default_paths.h ../include/options.h ../include/pool.h
misc.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
misc.o: ../include/class.h ../include/netacl.h ../include/support.h
misc.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
misc.o: ../include/modules.h ../include/auth.h ../include/response.h
misc.o: ../include/timers.h ../include/inet.h ../include/child.h
misc.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
misc.o: ../include/help.h ../include/feat.h ../include/ftp.h ../include/log.h
misc.o: ../include/parser.h ../include/xferlog.h ../include/scoreboard.h
misc.o: ../include/data.h ../include/display.h ../include/libsupp.h
misc.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
misc.o: ../include/ctrls.h ../include/event.h ../include/var.h
misc.o: ../include/compat.h ../include/pr-syslog.h
scoreboard.o: utils.h ../config.h ../include/version.h ../include/options.h
scoreboard.o: ../include/default_paths.h
