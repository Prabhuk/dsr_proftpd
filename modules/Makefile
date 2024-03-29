

top_builddir=../
top_srcdir=..
srcdir=.

GLUE_MODULE_OBJS=mod_core.o mod_xfer.o mod_auth_unix.o mod_auth_file.o mod_auth.o mod_ls.o mod_log.o mod_site.o mod_delay.o mod_auth_pam.o  mod_cap.o
SHARED_CFLAGS=-DPR_SHARED_MODULE
SHARED_LDFLAGS=-avoid-version -export-dynamic -module


include ../Make.rules

.SUFFIXES: .la

.PHONY: ""

all:
	@echo "Running make from top level directory."
	cd .. && $(MAKE) all

Makefile: Makefile.in ../config.status
	cd ../ && ./config.status

.c.o:
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $<

.c.la:
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(CFLAGS) $(SHARED_CFLAGS) -c $*.c
	$(LIBTOOL) --mode=link $(CC) -o $@ -rpath $(LIBEXECDIR) $(LDFLAGS) $(SHARED_LDFLAGS) $*.lo `cat $(top_srcdir)/modules/$*.c | grep '$$Libraries:' | sed -e 's/^.*\$$Libraries: \(.*\)\\$$/\1/'`

module_glue.c: module_glue.c.tmpl $(STATIC_MODULE_OBJS)
	srcdir=$(srcdir) $(srcdir)/glue.sh $(GLUE_MODULE_OBJS)

shared: $(SHARED_MODULE_OBJS)
	@dirs="$(SHARED_MODULE_DIRS)"; \
	for dir in $$dirs; do \
		(cd $(top_srcdir)/$$dir/ && $(MAKE) shared); \
	done

static: $(STATIC_MODULE_OBJS) module_glue.o
	@dirs="$(STATIC_MODULE_DIRS)"; \
	for dir in $$dirs; do \
		module=`echo "$$dir" | sed -e 's/^.*\///'`; \
		(cd $(top_srcdir)/$$dir/ && $(MAKE) static); \
		cp $(top_srcdir)/$$dir/$$module.o .; \
	done

install:
	test -z "$(SHARED_MODULE_OBJS)" || $(LIBTOOL) --mode=install $(INSTALL_BIN) $(SHARED_MODULE_OBJS) $(DESTDIR)$(LIBEXECDIR)
	@dirs="$(SHARED_MODULE_DIRS)"; \
	for dir in $$dirs; do\
		cd $(top_srcdir)/$$dir/ && $(MAKE) install; \
	done

clean:
	$(RM) *.o module_glue.c
	$(LIBTOOL) --mode=clean $(RM) $(SHARED_MODULE_OBJS)
	$(LIBTOOL) --mode=clean $(RM) `echo $(SHARED_MODULE_OBJS) | sed 's/\.la$\/.lo/g'`
	@dirs="$(SHARED_MODULE_DIRS) $(STATIC_MODULE_DIRS)"; \
	for dir in $$dirs; do\
		cd $(top_srcdir)/$$dir/ && $(MAKE) clean; \
	done

depend:
	$(RM) module_glue.c
	makedepend $(CPPFLAGS) -Y *.c 2>/dev/null
	makedepend $(CPPFLAGS) -Y -fMakefile.in *.c 2>/dev/null

# Dependancies automagically written below by makedepend

# DO NOT DELETE

mod_auth.o: ../include/conf.h ../include/version.h ../config.h
mod_auth.o: ../include/default_paths.h ../include/options.h ../include/pool.h
mod_auth.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
mod_auth.o: ../include/class.h ../include/netacl.h ../include/support.h
mod_auth.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
mod_auth.o: ../include/modules.h ../include/auth.h ../include/response.h
mod_auth.o: ../include/timers.h ../include/inet.h ../include/child.h
mod_auth.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
mod_auth.o: ../include/help.h ../include/feat.h ../include/ftp.h
mod_auth.o: ../include/log.h ../include/parser.h ../include/xferlog.h
mod_auth.o: ../include/scoreboard.h ../include/data.h ../include/display.h
mod_auth.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
mod_auth.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
mod_auth.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
mod_auth.o: ../include/privs.h
mod_auth_file.o: ../include/conf.h ../include/version.h ../config.h
mod_auth_file.o: ../include/default_paths.h ../include/options.h
mod_auth_file.o: ../include/pool.h ../include/regexp.h ../include/table.h
mod_auth_file.o: ../include/proftpd.h ../include/class.h ../include/netacl.h
mod_auth_file.o: ../include/support.h ../include/sets.h ../include/dirtree.h
mod_auth_file.o: ../include/netio.h ../include/modules.h ../include/auth.h
mod_auth_file.o: ../include/response.h ../include/timers.h ../include/inet.h
mod_auth_file.o: ../include/child.h ../include/netaddr.h
mod_auth_file.o: ../include/bindings.h ../include/ident.h ../include/help.h
mod_auth_file.o: ../include/feat.h ../include/ftp.h ../include/log.h
mod_auth_file.o: ../include/parser.h ../include/xferlog.h
mod_auth_file.o: ../include/scoreboard.h ../include/data.h
mod_auth_file.o: ../include/display.h ../include/libsupp.h
mod_auth_file.o: ../include/glibc-glob.h ../include/fsio.h
mod_auth_file.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
mod_auth_file.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
mod_auth_pam.o: ../include/conf.h ../include/version.h ../config.h
mod_auth_pam.o: ../include/default_paths.h ../include/options.h
mod_auth_pam.o: ../include/pool.h ../include/regexp.h ../include/table.h
mod_auth_pam.o: ../include/proftpd.h ../include/class.h ../include/netacl.h
mod_auth_pam.o: ../include/support.h ../include/sets.h ../include/dirtree.h
mod_auth_pam.o: ../include/netio.h ../include/modules.h ../include/auth.h
mod_auth_pam.o: ../include/response.h ../include/timers.h ../include/inet.h
mod_auth_pam.o: ../include/child.h ../include/netaddr.h ../include/bindings.h
mod_auth_pam.o: ../include/ident.h ../include/help.h ../include/feat.h
mod_auth_pam.o: ../include/ftp.h ../include/log.h ../include/parser.h
mod_auth_pam.o: ../include/xferlog.h ../include/scoreboard.h
mod_auth_pam.o: ../include/data.h ../include/display.h ../include/libsupp.h
mod_auth_pam.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
mod_auth_pam.o: ../include/ctrls.h ../include/event.h ../include/var.h
mod_auth_pam.o: ../include/compat.h ../include/pr-syslog.h ../include/privs.h
mod_auth_unix.o: ../include/conf.h ../include/version.h ../config.h
mod_auth_unix.o: ../include/default_paths.h ../include/options.h
mod_auth_unix.o: ../include/pool.h ../include/regexp.h ../include/table.h
mod_auth_unix.o: ../include/proftpd.h ../include/class.h ../include/netacl.h
mod_auth_unix.o: ../include/support.h ../include/sets.h ../include/dirtree.h
mod_auth_unix.o: ../include/netio.h ../include/modules.h ../include/auth.h
mod_auth_unix.o: ../include/response.h ../include/timers.h ../include/inet.h
mod_auth_unix.o: ../include/child.h ../include/netaddr.h
mod_auth_unix.o: ../include/bindings.h ../include/ident.h ../include/help.h
mod_auth_unix.o: ../include/feat.h ../include/ftp.h ../include/log.h
mod_auth_unix.o: ../include/parser.h ../include/xferlog.h
mod_auth_unix.o: ../include/scoreboard.h ../include/data.h
mod_auth_unix.o: ../include/display.h ../include/libsupp.h
mod_auth_unix.o: ../include/glibc-glob.h ../include/fsio.h
mod_auth_unix.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
mod_auth_unix.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
mod_auth_unix.o: ../include/privs.h
mod_cap.o: ../lib/libcap/include/sys/capability.h ../include/conf.h
mod_cap.o: ../include/version.h ../config.h ../include/default_paths.h
mod_cap.o: ../include/options.h ../include/pool.h ../include/regexp.h
mod_cap.o: ../include/table.h ../include/proftpd.h ../include/class.h
mod_cap.o: ../include/netacl.h ../include/support.h ../include/sets.h
mod_cap.o: ../include/dirtree.h ../include/netio.h ../include/modules.h
mod_cap.o: ../include/auth.h ../include/response.h ../include/timers.h
mod_cap.o: ../include/inet.h ../include/child.h ../include/netaddr.h
mod_cap.o: ../include/bindings.h ../include/ident.h ../include/help.h
mod_cap.o: ../include/feat.h ../include/ftp.h ../include/log.h
mod_cap.o: ../include/parser.h ../include/xferlog.h ../include/scoreboard.h
mod_cap.o: ../include/data.h ../include/display.h ../include/libsupp.h
mod_cap.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
mod_cap.o: ../include/ctrls.h ../include/event.h ../include/var.h
mod_cap.o: ../include/compat.h ../include/pr-syslog.h ../include/privs.h
mod_core.o: ../include/conf.h ../include/version.h ../config.h
mod_core.o: ../include/default_paths.h ../include/options.h ../include/pool.h
mod_core.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
mod_core.o: ../include/class.h ../include/netacl.h ../include/support.h
mod_core.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
mod_core.o: ../include/modules.h ../include/auth.h ../include/response.h
mod_core.o: ../include/timers.h ../include/inet.h ../include/child.h
mod_core.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
mod_core.o: ../include/help.h ../include/feat.h ../include/ftp.h
mod_core.o: ../include/log.h ../include/parser.h ../include/xferlog.h
mod_core.o: ../include/scoreboard.h ../include/data.h ../include/display.h
mod_core.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
mod_core.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
mod_core.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
mod_core.o: ../include/privs.h
mod_ctrls.o: ../include/conf.h ../include/version.h ../config.h
mod_ctrls.o: ../include/default_paths.h ../include/options.h
mod_ctrls.o: ../include/pool.h ../include/regexp.h ../include/table.h
mod_ctrls.o: ../include/proftpd.h ../include/class.h ../include/netacl.h
mod_ctrls.o: ../include/support.h ../include/sets.h ../include/dirtree.h
mod_ctrls.o: ../include/netio.h ../include/modules.h ../include/auth.h
mod_ctrls.o: ../include/response.h ../include/timers.h ../include/inet.h
mod_ctrls.o: ../include/child.h ../include/netaddr.h ../include/bindings.h
mod_ctrls.o: ../include/ident.h ../include/help.h ../include/feat.h
mod_ctrls.o: ../include/ftp.h ../include/log.h ../include/parser.h
mod_ctrls.o: ../include/xferlog.h ../include/scoreboard.h ../include/data.h
mod_ctrls.o: ../include/display.h ../include/libsupp.h
mod_ctrls.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
mod_ctrls.o: ../include/ctrls.h ../include/event.h ../include/var.h
mod_ctrls.o: ../include/compat.h ../include/pr-syslog.h ../include/privs.h
mod_ctrls.o: ../include/mod_ctrls.h
mod_delay.o: ../include/conf.h ../include/version.h ../config.h
mod_delay.o: ../include/default_paths.h ../include/options.h
mod_delay.o: ../include/pool.h ../include/regexp.h ../include/table.h
mod_delay.o: ../include/proftpd.h ../include/class.h ../include/netacl.h
mod_delay.o: ../include/support.h ../include/sets.h ../include/dirtree.h
mod_delay.o: ../include/netio.h ../include/modules.h ../include/auth.h
mod_delay.o: ../include/response.h ../include/timers.h ../include/inet.h
mod_delay.o: ../include/child.h ../include/netaddr.h ../include/bindings.h
mod_delay.o: ../include/ident.h ../include/help.h ../include/feat.h
mod_delay.o: ../include/ftp.h ../include/log.h ../include/parser.h
mod_delay.o: ../include/xferlog.h ../include/scoreboard.h ../include/data.h
mod_delay.o: ../include/display.h ../include/libsupp.h
mod_delay.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
mod_delay.o: ../include/ctrls.h ../include/event.h ../include/var.h
mod_delay.o: ../include/compat.h ../include/pr-syslog.h ../include/privs.h
mod_dso.o: ../include/conf.h ../include/version.h ../config.h
mod_dso.o: ../include/default_paths.h ../include/options.h ../include/pool.h
mod_dso.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
mod_dso.o: ../include/class.h ../include/netacl.h ../include/support.h
mod_dso.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
mod_dso.o: ../include/modules.h ../include/auth.h ../include/response.h
mod_dso.o: ../include/timers.h ../include/inet.h ../include/child.h
mod_dso.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
mod_dso.o: ../include/help.h ../include/feat.h ../include/ftp.h
mod_dso.o: ../include/log.h ../include/parser.h ../include/xferlog.h
mod_dso.o: ../include/scoreboard.h ../include/data.h ../include/display.h
mod_dso.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
mod_dso.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
mod_dso.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
mod_dso.o: ../include/mod_ctrls.h
mod_facl.o: ../include/conf.h ../include/version.h ../config.h
mod_facl.o: ../include/default_paths.h ../include/options.h ../include/pool.h
mod_facl.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
mod_facl.o: ../include/class.h ../include/netacl.h ../include/support.h
mod_facl.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
mod_facl.o: ../include/modules.h ../include/auth.h ../include/response.h
mod_facl.o: ../include/timers.h ../include/inet.h ../include/child.h
mod_facl.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
mod_facl.o: ../include/help.h ../include/feat.h ../include/ftp.h
mod_facl.o: ../include/log.h ../include/parser.h ../include/xferlog.h
mod_facl.o: ../include/scoreboard.h ../include/data.h ../include/display.h
mod_facl.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
mod_facl.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
mod_facl.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
mod_log.o: ../include/conf.h ../include/version.h ../config.h
mod_log.o: ../include/default_paths.h ../include/options.h ../include/pool.h
mod_log.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
mod_log.o: ../include/class.h ../include/netacl.h ../include/support.h
mod_log.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
mod_log.o: ../include/modules.h ../include/auth.h ../include/response.h
mod_log.o: ../include/timers.h ../include/inet.h ../include/child.h
mod_log.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
mod_log.o: ../include/help.h ../include/feat.h ../include/ftp.h
mod_log.o: ../include/log.h ../include/parser.h ../include/xferlog.h
mod_log.o: ../include/scoreboard.h ../include/data.h ../include/display.h
mod_log.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
mod_log.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
mod_log.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
mod_log.o: ../include/privs.h
mod_ls.o: ../include/conf.h ../include/version.h ../config.h
mod_ls.o: ../include/default_paths.h ../include/options.h ../include/pool.h
mod_ls.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
mod_ls.o: ../include/class.h ../include/netacl.h ../include/support.h
mod_ls.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
mod_ls.o: ../include/modules.h ../include/auth.h ../include/response.h
mod_ls.o: ../include/timers.h ../include/inet.h ../include/child.h
mod_ls.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
mod_ls.o: ../include/help.h ../include/feat.h ../include/ftp.h
mod_ls.o: ../include/log.h ../include/parser.h ../include/xferlog.h
mod_ls.o: ../include/scoreboard.h ../include/data.h ../include/display.h
mod_ls.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
mod_ls.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
mod_ls.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
mod_site.o: ../include/conf.h ../include/version.h ../config.h
mod_site.o: ../include/default_paths.h ../include/options.h ../include/pool.h
mod_site.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
mod_site.o: ../include/class.h ../include/netacl.h ../include/support.h
mod_site.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
mod_site.o: ../include/modules.h ../include/auth.h ../include/response.h
mod_site.o: ../include/timers.h ../include/inet.h ../include/child.h
mod_site.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
mod_site.o: ../include/help.h ../include/feat.h ../include/ftp.h
mod_site.o: ../include/log.h ../include/parser.h ../include/xferlog.h
mod_site.o: ../include/scoreboard.h ../include/data.h ../include/display.h
mod_site.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
mod_site.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
mod_site.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
mod_xfer.o: ../include/conf.h ../include/version.h ../config.h
mod_xfer.o: ../include/default_paths.h ../include/options.h ../include/pool.h
mod_xfer.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
mod_xfer.o: ../include/class.h ../include/netacl.h ../include/support.h
mod_xfer.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
mod_xfer.o: ../include/modules.h ../include/auth.h ../include/response.h
mod_xfer.o: ../include/timers.h ../include/inet.h ../include/child.h
mod_xfer.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
mod_xfer.o: ../include/help.h ../include/feat.h ../include/ftp.h
mod_xfer.o: ../include/log.h ../include/parser.h ../include/xferlog.h
mod_xfer.o: ../include/scoreboard.h ../include/data.h ../include/display.h
mod_xfer.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
mod_xfer.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
mod_xfer.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
mod_xfer.o: ../include/privs.h
