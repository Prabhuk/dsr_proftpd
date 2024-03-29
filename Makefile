

top_builddir=.
top_srcdir=.
srcdir=.

DESTDIR=

include ./Make.rules

DIRS=lib/libcap
EXEEXT=
INSTALL_DEPS=
LIBTOOL_DEPS=.//ltmain.sh
LIBLTDL=${top_builddir}/lib/libltdl/libltdlc.la

MAIN_LDFLAGS=
MAIN_LIBS=

BUILD_PROFTPD_OBJS=$(BUILD_OBJS) $(BUILD_STATIC_MODULE_OBJS)
BUILD_BIN=proftpd$(EXEEXT) ftpcount$(EXEEXT) ftpdctl$(EXEEXT) ftpshut$(EXEEXT) ftptop$(EXEEXT) ftpwho$(EXEEXT)


all: $(BUILD_BIN)

include/buildstamp.h:
	echo \#define BUILD_STAMP \"`date`\" >include/buildstamp.h

dummy:

lib: include/buildstamp.h dummy
	cd lib/ && $(MAKE) lib

src: include/buildstamp.h dummy
	cd src/ && $(MAKE) src

modules: include/buildstamp.h dummy
	cd modules/ && $(MAKE) static
	test -z "$(SHARED_MODULE_OBJS)" -a -z "$(SHARED_MODULE_DIRS)" || (cd modules/ && $(MAKE) shared)

utils: include/buildstamp.h dummy
	cd utils/ && $(MAKE) utils

dirs: include/buildstamp.h dummy
	@dirs="$(DIRS)"; \
	for dir in $$dirs; do \
		if [ -d "$$dir" ]; then cd $$dir/ && $(MAKE); fi; \
	done


proftpd$(EXEEXT): lib src modules dirs
	$(LIBTOOL) --mode=link $(CC) $(LDFLAGS) $(MAIN_LDFLAGS) -o $@ $(BUILD_PROFTPD_OBJS) $(LIBS) $(MAIN_LIBS) -Wl,--plugin-opt=data-rando,--plugin-opt=-safety-analysis=false -Wl,--plugin-opt=-stats -lDataRando_rt -lstdc++ -Wl,--plugin-opt=-print-allocation-counts=True

ftpcount$(EXEEXT): utils
	$(CC) $(LDFLAGS) -o $@ $(BUILD_FTPCOUNT_OBJS)

ftpdctl$(EXEEXT): src
	$(CC) $(LDFLAGS) -o $@ $(BUILD_FTPDCTL_OBJS) $(LIBS)

ftpshut$(EXEEXT): utils
	$(CC) $(LDFLAGS) -o $@ $(BUILD_FTPSHUT_OBJS)

ftptop$(EXEEXT): lib utils
	$(CC) $(LDFLAGS) -o $@ $(BUILD_FTPTOP_OBJS) $(CURSES_LIBS) -lsupp

ftpwho$(EXEEXT): lib utils
	$(CC) $(LDFLAGS) -o $@ $(BUILD_FTPWHO_OBJS) -lsupp


# BSD install -d doesn't work, so ...
$(DESTDIR)$(libexecdir) $(DESTDIR)$(localstatedir) $(DESTDIR)$(sysconfdir) $(DESTDIR)$(rundir) $(DESTDIR)$(bindir) $(DESTDIR)$(sbindir) $(DESTDIR)$(mandir) $(DESTDIR)$(mandir)/man1 $(DESTDIR)$(mandir)/man5 $(DESTDIR)$(mandir)/man8:
	@if [ ! -d $@ ]; then \
		mkdir -p $@; \
		chown $(INSTALL_USER):$(INSTALL_GROUP) $@; \
		chmod 0755 $@; \
	fi

install-proftpd: proftpd $(DESTDIR)$(localstatedir) $(DESTDIR)$(sysconfdir) $(DESTDIR)$(rundir) $(DESTDIR)$(sbindir)
	$(INSTALL_SBIN) proftpd $(DESTDIR)$(sbindir)/proftpd
	if [ -f $(DESTDIR)$(sbindir)/in.proftpd ] ; then \
		rm -f $(DESTDIR)$(sbindir)/in.proftpd ; \
	fi
	ln -s proftpd $(DESTDIR)$(sbindir)/in.proftpd
	-chown -h $(INSTALL_USER):$(INSTALL_GROUP) $(DESTDIR)$(sbindir)/in.proftpd

install-modules: $(DESTDIR)$(libexecdir)
	test -z "$(SHARED_MODULE_OBJS)" -a -z "$(SHARED_MODULE_DIRS)" || (cd modules/ && $(MAKE) install)

install-utils: $(DESTDIR)$(sbindir) $(DESTDIR)$(bindir)
	$(INSTALL_BIN)  ftpcount $(DESTDIR)$(bindir)/ftpcount
	$(INSTALL_BIN)  ftpdctl  $(DESTDIR)$(bindir)/ftpdctl
	$(INSTALL_SBIN) ftpshut  $(DESTDIR)$(sbindir)/ftpshut
	$(INSTALL_BIN)  ftptop   $(DESTDIR)$(bindir)/ftptop
	$(INSTALL_BIN)  ftpwho   $(DESTDIR)$(bindir)/ftpwho

install-conf: $(DESTDIR)$(sysconfdir)
	if [ ! -f $(DESTDIR)$(sysconfdir)/proftpd.conf ] ; then \
		$(INSTALL) -o $(INSTALL_USER) -g $(INSTALL_GROUP) -m 0644 \
		           $(top_srcdir)/sample-configurations/basic.conf \
	       	           $(DESTDIR)$(sysconfdir)/proftpd.conf ; \
	fi

install-libltdl:
	cd lib/libltdl/ && $(MAKE) install

install-man: $(DESTDIR)$(mandir) $(DESTDIR)$(mandir)/man1 $(DESTDIR)$(mandir)/man5 $(DESTDIR)$(mandir)/man8
	$(INSTALL_MAN) $(top_srcdir)/src/ftpdctl.8    $(DESTDIR)$(mandir)/man8
	$(INSTALL_MAN) $(top_srcdir)/src/proftpd.8    $(DESTDIR)$(mandir)/man8
	$(INSTALL_MAN) $(top_srcdir)/utils/ftpshut.8  $(DESTDIR)$(mandir)/man8
	$(INSTALL_MAN) $(top_srcdir)/utils/ftpcount.1 $(DESTDIR)$(mandir)/man1
	$(INSTALL_MAN) $(top_srcdir)/utils/ftptop.1   $(DESTDIR)$(mandir)/man1
	$(INSTALL_MAN) $(top_srcdir)/utils/ftpwho.1   $(DESTDIR)$(mandir)/man1
	$(INSTALL_MAN) $(top_srcdir)/src/xferlog.5    $(DESTDIR)$(mandir)/man5

install-all: install-proftpd install-modules install-utils install-conf install-man $(INSTALL_DEPS)

install: all install-all

depend:
	cd src/     && $(MAKE) depend
	cd modules/ && $(MAKE) depend
	cd lib/     && $(MAKE) depend
	cd utils/   && $(MAKE) depend

clean:
	cd src/     && $(MAKE) clean
	cd modules/ && $(MAKE) clean
	cd lib/     && $(MAKE) clean
	cd utils/   && $(MAKE) clean

	@dirs="$(DIRS)"; \
	for dir in $$dirs; do \
		if [ -d "$$dir" ]; then cd $$dir/ && $(MAKE) clean; fi; \
	done

	rm -f include/buildstamp.h
	rm -f $(BUILD_BIN)

distclean: clean
	cd lib/ && $(MAKE) distclean
	rm -f Makefile Make.modules Make.rules \
	      lib/Makefile modules/Makefile src/Makefile utils/Makefile
	rm -f config.h config.status config.cache config.log libtool stamp-h
	rm -f include/buildstamp.h
	rm -rf .libs/

dist: depend distclean
	rm -rf `find . -name CVS`
	rm -rf `find . -name .cvsignore`
	rm -rf `find . -name core`
	rm -rf `find . -name '*~'`
	rm -fr `find . -name '*.bak'`
	# RPM needs this in the top-level directory in order to support '-t'
	mv -f contrib/dist/rpm/proftpd.spec .
	# Other users may need to execute these scripts
	chmod a+x configure config.sub install-sh modules/glue.sh


# autoheader might not change config.h.in, so touch a stamp file.
${srcdir}/config.h.in: stamp-h.in
${srcdir}/stamp-h.in: configure.in acconfig.h
	cd ${srcdir} && autoheader
	echo timestamp > ${srcdir}/stamp-h.in

config.h: stamp-h
stamp-h: config.h.in config.status
	./config.status

${srcdir}/configure: configure.in
	cd ${srcdir} && autoconf

Make.rules: Make.rules.in config.status
	./config.status

Makefile: Makefile.in Make.rules.in config.status
	./config.status

config.status: configure
	./config.status --recheck

libtool: $(LIBTOOL_DEPS)
	$(SHELL) ./config.status --recheck
