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


src: $(OBJS) $(FTPDCTL_OBJS)

clean:
	rm -f *.o

depend:
	makedepend $(CPPFLAGS) -Y *.c 2>/dev/null
	makedepend $(CPPFLAGS) -Y -fMakefile.in *.c 2>/dev/null

# Dependancies written below

# DO NOT DELETE

auth.o: ../include/conf.h ../include/version.h ../config.h
auth.o: ../include/default_paths.h ../include/options.h ../include/pool.h
auth.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
auth.o: ../include/class.h ../include/netacl.h ../include/support.h
auth.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
auth.o: ../include/modules.h ../include/auth.h ../include/response.h
auth.o: ../include/timers.h ../include/inet.h ../include/child.h
auth.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
auth.o: ../include/help.h ../include/feat.h ../include/ftp.h ../include/log.h
auth.o: ../include/parser.h ../include/xferlog.h ../include/scoreboard.h
auth.o: ../include/data.h ../include/display.h ../include/libsupp.h
auth.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
auth.o: ../include/ctrls.h ../include/event.h ../include/var.h
auth.o: ../include/compat.h ../include/pr-syslog.h
bindings.o: ../include/conf.h ../include/version.h ../config.h
bindings.o: ../include/default_paths.h ../include/options.h ../include/pool.h
bindings.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
bindings.o: ../include/class.h ../include/netacl.h ../include/support.h
bindings.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
bindings.o: ../include/modules.h ../include/auth.h ../include/response.h
bindings.o: ../include/timers.h ../include/inet.h ../include/child.h
bindings.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
bindings.o: ../include/help.h ../include/feat.h ../include/ftp.h
bindings.o: ../include/log.h ../include/parser.h ../include/xferlog.h
bindings.o: ../include/scoreboard.h ../include/data.h ../include/display.h
bindings.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
bindings.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
bindings.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
child.o: ../include/conf.h ../include/version.h ../config.h
child.o: ../include/default_paths.h ../include/options.h ../include/pool.h
child.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
child.o: ../include/class.h ../include/netacl.h ../include/support.h
child.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
child.o: ../include/modules.h ../include/auth.h ../include/response.h
child.o: ../include/timers.h ../include/inet.h ../include/child.h
child.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
child.o: ../include/help.h ../include/feat.h ../include/ftp.h
child.o: ../include/log.h ../include/parser.h ../include/xferlog.h
child.o: ../include/scoreboard.h ../include/data.h ../include/display.h
child.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
child.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
child.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
class.o: ../include/conf.h ../include/version.h ../config.h
class.o: ../include/default_paths.h ../include/options.h ../include/pool.h
class.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
class.o: ../include/class.h ../include/netacl.h ../include/support.h
class.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
class.o: ../include/modules.h ../include/auth.h ../include/response.h
class.o: ../include/timers.h ../include/inet.h ../include/child.h
class.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
class.o: ../include/help.h ../include/feat.h ../include/ftp.h
class.o: ../include/log.h ../include/parser.h ../include/xferlog.h
class.o: ../include/scoreboard.h ../include/data.h ../include/display.h
class.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
class.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
class.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
ctrls.o: ../include/conf.h ../include/version.h ../config.h
ctrls.o: ../include/default_paths.h ../include/options.h ../include/pool.h
ctrls.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
ctrls.o: ../include/class.h ../include/netacl.h ../include/support.h
ctrls.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
ctrls.o: ../include/modules.h ../include/auth.h ../include/response.h
ctrls.o: ../include/timers.h ../include/inet.h ../include/child.h
ctrls.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
ctrls.o: ../include/help.h ../include/feat.h ../include/ftp.h
ctrls.o: ../include/log.h ../include/parser.h ../include/xferlog.h
ctrls.o: ../include/scoreboard.h ../include/data.h ../include/display.h
ctrls.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
ctrls.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
ctrls.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
data.o: ../include/conf.h ../include/version.h ../config.h
data.o: ../include/default_paths.h ../include/options.h ../include/pool.h
data.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
data.o: ../include/class.h ../include/netacl.h ../include/support.h
data.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
data.o: ../include/modules.h ../include/auth.h ../include/response.h
data.o: ../include/timers.h ../include/inet.h ../include/child.h
data.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
data.o: ../include/help.h ../include/feat.h ../include/ftp.h ../include/log.h
data.o: ../include/parser.h ../include/xferlog.h ../include/scoreboard.h
data.o: ../include/data.h ../include/display.h ../include/libsupp.h
data.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
data.o: ../include/ctrls.h ../include/event.h ../include/var.h
data.o: ../include/compat.h ../include/pr-syslog.h
dirtree.o: ../include/conf.h ../include/version.h ../config.h
dirtree.o: ../include/default_paths.h ../include/options.h ../include/pool.h
dirtree.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
dirtree.o: ../include/class.h ../include/netacl.h ../include/support.h
dirtree.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
dirtree.o: ../include/modules.h ../include/auth.h ../include/response.h
dirtree.o: ../include/timers.h ../include/inet.h ../include/child.h
dirtree.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
dirtree.o: ../include/help.h ../include/feat.h ../include/ftp.h
dirtree.o: ../include/log.h ../include/parser.h ../include/xferlog.h
dirtree.o: ../include/scoreboard.h ../include/data.h ../include/display.h
dirtree.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
dirtree.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
dirtree.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
display.o: ../include/conf.h ../include/version.h ../config.h
display.o: ../include/default_paths.h ../include/options.h ../include/pool.h
display.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
display.o: ../include/class.h ../include/netacl.h ../include/support.h
display.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
display.o: ../include/modules.h ../include/auth.h ../include/response.h
display.o: ../include/timers.h ../include/inet.h ../include/child.h
display.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
display.o: ../include/help.h ../include/feat.h ../include/ftp.h
display.o: ../include/log.h ../include/parser.h ../include/xferlog.h
display.o: ../include/scoreboard.h ../include/data.h ../include/display.h
display.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
display.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
display.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
event.o: ../include/conf.h ../include/version.h ../config.h
event.o: ../include/default_paths.h ../include/options.h ../include/pool.h
event.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
event.o: ../include/class.h ../include/netacl.h ../include/support.h
event.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
event.o: ../include/modules.h ../include/auth.h ../include/response.h
event.o: ../include/timers.h ../include/inet.h ../include/child.h
event.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
event.o: ../include/help.h ../include/feat.h ../include/ftp.h
event.o: ../include/log.h ../include/parser.h ../include/xferlog.h
event.o: ../include/scoreboard.h ../include/data.h ../include/display.h
event.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
event.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
event.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
feat.o: ../include/conf.h ../include/version.h ../config.h
feat.o: ../include/default_paths.h ../include/options.h ../include/pool.h
feat.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
feat.o: ../include/class.h ../include/netacl.h ../include/support.h
feat.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
feat.o: ../include/modules.h ../include/auth.h ../include/response.h
feat.o: ../include/timers.h ../include/inet.h ../include/child.h
feat.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
feat.o: ../include/help.h ../include/feat.h ../include/ftp.h ../include/log.h
feat.o: ../include/parser.h ../include/xferlog.h ../include/scoreboard.h
feat.o: ../include/data.h ../include/display.h ../include/libsupp.h
feat.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
feat.o: ../include/ctrls.h ../include/event.h ../include/var.h
feat.o: ../include/compat.h ../include/pr-syslog.h
fsio.o: ../include/conf.h ../include/version.h ../config.h
fsio.o: ../include/default_paths.h ../include/options.h ../include/pool.h
fsio.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
fsio.o: ../include/class.h ../include/netacl.h ../include/support.h
fsio.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
fsio.o: ../include/modules.h ../include/auth.h ../include/response.h
fsio.o: ../include/timers.h ../include/inet.h ../include/child.h
fsio.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
fsio.o: ../include/help.h ../include/feat.h ../include/ftp.h ../include/log.h
fsio.o: ../include/parser.h ../include/xferlog.h ../include/scoreboard.h
fsio.o: ../include/data.h ../include/display.h ../include/libsupp.h
fsio.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
fsio.o: ../include/ctrls.h ../include/event.h ../include/var.h
fsio.o: ../include/compat.h ../include/pr-syslog.h
ftpdctl.o: ../include/conf.h ../include/version.h ../config.h
ftpdctl.o: ../include/default_paths.h ../include/options.h ../include/pool.h
ftpdctl.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
ftpdctl.o: ../include/class.h ../include/netacl.h ../include/support.h
ftpdctl.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
ftpdctl.o: ../include/modules.h ../include/auth.h ../include/response.h
ftpdctl.o: ../include/timers.h ../include/inet.h ../include/child.h
ftpdctl.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
ftpdctl.o: ../include/help.h ../include/feat.h ../include/ftp.h
ftpdctl.o: ../include/log.h ../include/parser.h ../include/xferlog.h
ftpdctl.o: ../include/scoreboard.h ../include/data.h ../include/display.h
ftpdctl.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
ftpdctl.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
ftpdctl.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
help.o: ../include/conf.h ../include/version.h ../config.h
help.o: ../include/default_paths.h ../include/options.h ../include/pool.h
help.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
help.o: ../include/class.h ../include/netacl.h ../include/support.h
help.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
help.o: ../include/modules.h ../include/auth.h ../include/response.h
help.o: ../include/timers.h ../include/inet.h ../include/child.h
help.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
help.o: ../include/help.h ../include/feat.h ../include/ftp.h ../include/log.h
help.o: ../include/parser.h ../include/xferlog.h ../include/scoreboard.h
help.o: ../include/data.h ../include/display.h ../include/libsupp.h
help.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
help.o: ../include/ctrls.h ../include/event.h ../include/var.h
help.o: ../include/compat.h ../include/pr-syslog.h
ident.o: ../include/conf.h ../include/version.h ../config.h
ident.o: ../include/default_paths.h ../include/options.h ../include/pool.h
ident.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
ident.o: ../include/class.h ../include/netacl.h ../include/support.h
ident.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
ident.o: ../include/modules.h ../include/auth.h ../include/response.h
ident.o: ../include/timers.h ../include/inet.h ../include/child.h
ident.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
ident.o: ../include/help.h ../include/feat.h ../include/ftp.h
ident.o: ../include/log.h ../include/parser.h ../include/xferlog.h
ident.o: ../include/scoreboard.h ../include/data.h ../include/display.h
ident.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
ident.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
ident.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
inet.o: ../include/conf.h ../include/version.h ../config.h
inet.o: ../include/default_paths.h ../include/options.h ../include/pool.h
inet.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
inet.o: ../include/class.h ../include/netacl.h ../include/support.h
inet.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
inet.o: ../include/modules.h ../include/auth.h ../include/response.h
inet.o: ../include/timers.h ../include/inet.h ../include/child.h
inet.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
inet.o: ../include/help.h ../include/feat.h ../include/ftp.h ../include/log.h
inet.o: ../include/parser.h ../include/xferlog.h ../include/scoreboard.h
inet.o: ../include/data.h ../include/display.h ../include/libsupp.h
inet.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
inet.o: ../include/ctrls.h ../include/event.h ../include/var.h
inet.o: ../include/compat.h ../include/pr-syslog.h ../include/privs.h
log.o: ../include/conf.h ../include/version.h ../config.h
log.o: ../include/default_paths.h ../include/options.h ../include/pool.h
log.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
log.o: ../include/class.h ../include/netacl.h ../include/support.h
log.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
log.o: ../include/modules.h ../include/auth.h ../include/response.h
log.o: ../include/timers.h ../include/inet.h ../include/child.h
log.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
log.o: ../include/help.h ../include/feat.h ../include/ftp.h ../include/log.h
log.o: ../include/parser.h ../include/xferlog.h ../include/scoreboard.h
log.o: ../include/data.h ../include/display.h ../include/libsupp.h
log.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
log.o: ../include/ctrls.h ../include/event.h ../include/var.h
log.o: ../include/compat.h ../include/pr-syslog.h
main.o: ../include/conf.h ../include/version.h ../config.h
main.o: ../include/default_paths.h ../include/options.h ../include/pool.h
main.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
main.o: ../include/class.h ../include/netacl.h ../include/support.h
main.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
main.o: ../include/modules.h ../include/auth.h ../include/response.h
main.o: ../include/timers.h ../include/inet.h ../include/child.h
main.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
main.o: ../include/help.h ../include/feat.h ../include/ftp.h ../include/log.h
main.o: ../include/parser.h ../include/xferlog.h ../include/scoreboard.h
main.o: ../include/data.h ../include/display.h ../include/libsupp.h
main.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
main.o: ../include/ctrls.h ../include/event.h ../include/var.h
main.o: ../include/compat.h ../include/pr-syslog.h ../include/privs.h
mkhome.o: ../include/conf.h ../include/version.h ../config.h
mkhome.o: ../include/default_paths.h ../include/options.h ../include/pool.h
mkhome.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
mkhome.o: ../include/class.h ../include/netacl.h ../include/support.h
mkhome.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
mkhome.o: ../include/modules.h ../include/auth.h ../include/response.h
mkhome.o: ../include/timers.h ../include/inet.h ../include/child.h
mkhome.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
mkhome.o: ../include/help.h ../include/feat.h ../include/ftp.h
mkhome.o: ../include/log.h ../include/parser.h ../include/xferlog.h
mkhome.o: ../include/scoreboard.h ../include/data.h ../include/display.h
mkhome.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
mkhome.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
mkhome.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
mkhome.o: ../include/privs.h
modules.o: ../include/conf.h ../include/version.h ../config.h
modules.o: ../include/default_paths.h ../include/options.h ../include/pool.h
modules.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
modules.o: ../include/class.h ../include/netacl.h ../include/support.h
modules.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
modules.o: ../include/modules.h ../include/auth.h ../include/response.h
modules.o: ../include/timers.h ../include/inet.h ../include/child.h
modules.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
modules.o: ../include/help.h ../include/feat.h ../include/ftp.h
modules.o: ../include/log.h ../include/parser.h ../include/xferlog.h
modules.o: ../include/scoreboard.h ../include/data.h ../include/display.h
modules.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
modules.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
modules.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
netacl.o: ../include/conf.h ../include/version.h ../config.h
netacl.o: ../include/default_paths.h ../include/options.h ../include/pool.h
netacl.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
netacl.o: ../include/class.h ../include/netacl.h ../include/support.h
netacl.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
netacl.o: ../include/modules.h ../include/auth.h ../include/response.h
netacl.o: ../include/timers.h ../include/inet.h ../include/child.h
netacl.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
netacl.o: ../include/help.h ../include/feat.h ../include/ftp.h
netacl.o: ../include/log.h ../include/parser.h ../include/xferlog.h
netacl.o: ../include/scoreboard.h ../include/data.h ../include/display.h
netacl.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
netacl.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
netacl.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
netaddr.o: ../include/conf.h ../include/version.h ../config.h
netaddr.o: ../include/default_paths.h ../include/options.h ../include/pool.h
netaddr.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
netaddr.o: ../include/class.h ../include/netacl.h ../include/support.h
netaddr.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
netaddr.o: ../include/modules.h ../include/auth.h ../include/response.h
netaddr.o: ../include/timers.h ../include/inet.h ../include/child.h
netaddr.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
netaddr.o: ../include/help.h ../include/feat.h ../include/ftp.h
netaddr.o: ../include/log.h ../include/parser.h ../include/xferlog.h
netaddr.o: ../include/scoreboard.h ../include/data.h ../include/display.h
netaddr.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
netaddr.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
netaddr.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
netio.o: ../include/conf.h ../include/version.h ../config.h
netio.o: ../include/default_paths.h ../include/options.h ../include/pool.h
netio.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
netio.o: ../include/class.h ../include/netacl.h ../include/support.h
netio.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
netio.o: ../include/modules.h ../include/auth.h ../include/response.h
netio.o: ../include/timers.h ../include/inet.h ../include/child.h
netio.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
netio.o: ../include/help.h ../include/feat.h ../include/ftp.h
netio.o: ../include/log.h ../include/parser.h ../include/xferlog.h
netio.o: ../include/scoreboard.h ../include/data.h ../include/display.h
netio.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
netio.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
netio.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
parser.o: ../include/conf.h ../include/version.h ../config.h
parser.o: ../include/default_paths.h ../include/options.h ../include/pool.h
parser.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
parser.o: ../include/class.h ../include/netacl.h ../include/support.h
parser.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
parser.o: ../include/modules.h ../include/auth.h ../include/response.h
parser.o: ../include/timers.h ../include/inet.h ../include/child.h
parser.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
parser.o: ../include/help.h ../include/feat.h ../include/ftp.h
parser.o: ../include/log.h ../include/parser.h ../include/xferlog.h
parser.o: ../include/scoreboard.h ../include/data.h ../include/display.h
parser.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
parser.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
parser.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
pool.o: ../include/conf.h ../include/version.h ../config.h
pool.o: ../include/default_paths.h ../include/options.h ../include/pool.h
pool.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
pool.o: ../include/class.h ../include/netacl.h ../include/support.h
pool.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
pool.o: ../include/modules.h ../include/auth.h ../include/response.h
pool.o: ../include/timers.h ../include/inet.h ../include/child.h
pool.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
pool.o: ../include/help.h ../include/feat.h ../include/ftp.h ../include/log.h
pool.o: ../include/parser.h ../include/xferlog.h ../include/scoreboard.h
pool.o: ../include/data.h ../include/display.h ../include/libsupp.h
pool.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
pool.o: ../include/ctrls.h ../include/event.h ../include/var.h
pool.o: ../include/compat.h ../include/pr-syslog.h
regexp.o: ../include/conf.h ../include/version.h ../config.h
regexp.o: ../include/default_paths.h ../include/options.h ../include/pool.h
regexp.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
regexp.o: ../include/class.h ../include/netacl.h ../include/support.h
regexp.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
regexp.o: ../include/modules.h ../include/auth.h ../include/response.h
regexp.o: ../include/timers.h ../include/inet.h ../include/child.h
regexp.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
regexp.o: ../include/help.h ../include/feat.h ../include/ftp.h
regexp.o: ../include/log.h ../include/parser.h ../include/xferlog.h
regexp.o: ../include/scoreboard.h ../include/data.h ../include/display.h
regexp.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
regexp.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
regexp.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
response.o: ../include/conf.h ../include/version.h ../config.h
response.o: ../include/default_paths.h ../include/options.h ../include/pool.h
response.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
response.o: ../include/class.h ../include/netacl.h ../include/support.h
response.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
response.o: ../include/modules.h ../include/auth.h ../include/response.h
response.o: ../include/timers.h ../include/inet.h ../include/child.h
response.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
response.o: ../include/help.h ../include/feat.h ../include/ftp.h
response.o: ../include/log.h ../include/parser.h ../include/xferlog.h
response.o: ../include/scoreboard.h ../include/data.h ../include/display.h
response.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
response.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
response.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
scoreboard.o: ../include/conf.h ../include/version.h ../config.h
scoreboard.o: ../include/default_paths.h ../include/options.h
scoreboard.o: ../include/pool.h ../include/regexp.h ../include/table.h
scoreboard.o: ../include/proftpd.h ../include/class.h ../include/netacl.h
scoreboard.o: ../include/support.h ../include/sets.h ../include/dirtree.h
scoreboard.o: ../include/netio.h ../include/modules.h ../include/auth.h
scoreboard.o: ../include/response.h ../include/timers.h ../include/inet.h
scoreboard.o: ../include/child.h ../include/netaddr.h ../include/bindings.h
scoreboard.o: ../include/ident.h ../include/help.h ../include/feat.h
scoreboard.o: ../include/ftp.h ../include/log.h ../include/parser.h
scoreboard.o: ../include/xferlog.h ../include/scoreboard.h ../include/data.h
scoreboard.o: ../include/display.h ../include/libsupp.h
scoreboard.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
scoreboard.o: ../include/ctrls.h ../include/event.h ../include/var.h
scoreboard.o: ../include/compat.h ../include/pr-syslog.h
sets.o: ../include/conf.h ../include/version.h ../config.h
sets.o: ../include/default_paths.h ../include/options.h ../include/pool.h
sets.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
sets.o: ../include/class.h ../include/netacl.h ../include/support.h
sets.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
sets.o: ../include/modules.h ../include/auth.h ../include/response.h
sets.o: ../include/timers.h ../include/inet.h ../include/child.h
sets.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
sets.o: ../include/help.h ../include/feat.h ../include/ftp.h ../include/log.h
sets.o: ../include/parser.h ../include/xferlog.h ../include/scoreboard.h
sets.o: ../include/data.h ../include/display.h ../include/libsupp.h
sets.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
sets.o: ../include/ctrls.h ../include/event.h ../include/var.h
sets.o: ../include/compat.h ../include/pr-syslog.h
support.o: ../include/conf.h ../include/version.h ../config.h
support.o: ../include/default_paths.h ../include/options.h ../include/pool.h
support.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
support.o: ../include/class.h ../include/netacl.h ../include/support.h
support.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
support.o: ../include/modules.h ../include/auth.h ../include/response.h
support.o: ../include/timers.h ../include/inet.h ../include/child.h
support.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
support.o: ../include/help.h ../include/feat.h ../include/ftp.h
support.o: ../include/log.h ../include/parser.h ../include/xferlog.h
support.o: ../include/scoreboard.h ../include/data.h ../include/display.h
support.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
support.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
support.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
table.o: ../include/conf.h ../include/version.h ../config.h
table.o: ../include/default_paths.h ../include/options.h ../include/pool.h
table.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
table.o: ../include/class.h ../include/netacl.h ../include/support.h
table.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
table.o: ../include/modules.h ../include/auth.h ../include/response.h
table.o: ../include/timers.h ../include/inet.h ../include/child.h
table.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
table.o: ../include/help.h ../include/feat.h ../include/ftp.h
table.o: ../include/log.h ../include/parser.h ../include/xferlog.h
table.o: ../include/scoreboard.h ../include/data.h ../include/display.h
table.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
table.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
table.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
timers.o: ../include/conf.h ../include/version.h ../config.h
timers.o: ../include/default_paths.h ../include/options.h ../include/pool.h
timers.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
timers.o: ../include/class.h ../include/netacl.h ../include/support.h
timers.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
timers.o: ../include/modules.h ../include/auth.h ../include/response.h
timers.o: ../include/timers.h ../include/inet.h ../include/child.h
timers.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
timers.o: ../include/help.h ../include/feat.h ../include/ftp.h
timers.o: ../include/log.h ../include/parser.h ../include/xferlog.h
timers.o: ../include/scoreboard.h ../include/data.h ../include/display.h
timers.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
timers.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
timers.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
var.o: ../include/conf.h ../include/version.h ../config.h
var.o: ../include/default_paths.h ../include/options.h ../include/pool.h
var.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
var.o: ../include/class.h ../include/netacl.h ../include/support.h
var.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
var.o: ../include/modules.h ../include/auth.h ../include/response.h
var.o: ../include/timers.h ../include/inet.h ../include/child.h
var.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
var.o: ../include/help.h ../include/feat.h ../include/ftp.h ../include/log.h
var.o: ../include/parser.h ../include/xferlog.h ../include/scoreboard.h
var.o: ../include/data.h ../include/display.h ../include/libsupp.h
var.o: ../include/glibc-glob.h ../include/fsio.h ../include/mkhome.h
var.o: ../include/ctrls.h ../include/event.h ../include/var.h
var.o: ../include/compat.h ../include/pr-syslog.h
xferlog.o: ../include/conf.h ../include/version.h ../config.h
xferlog.o: ../include/default_paths.h ../include/options.h ../include/pool.h
xferlog.o: ../include/regexp.h ../include/table.h ../include/proftpd.h
xferlog.o: ../include/class.h ../include/netacl.h ../include/support.h
xferlog.o: ../include/sets.h ../include/dirtree.h ../include/netio.h
xferlog.o: ../include/modules.h ../include/auth.h ../include/response.h
xferlog.o: ../include/timers.h ../include/inet.h ../include/child.h
xferlog.o: ../include/netaddr.h ../include/bindings.h ../include/ident.h
xferlog.o: ../include/help.h ../include/feat.h ../include/ftp.h
xferlog.o: ../include/log.h ../include/parser.h ../include/xferlog.h
xferlog.o: ../include/scoreboard.h ../include/data.h ../include/display.h
xferlog.o: ../include/libsupp.h ../include/glibc-glob.h ../include/fsio.h
xferlog.o: ../include/mkhome.h ../include/ctrls.h ../include/event.h
xferlog.o: ../include/var.h ../include/compat.h ../include/pr-syslog.h
