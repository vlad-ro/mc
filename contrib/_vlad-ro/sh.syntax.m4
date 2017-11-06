include(common.m4)
divert(-1)
define(SH_CL_DEFAULT, CL_DEFAULT)
define(SH_CL_KEYWORD, CL_KEYWORD)
define(SH_CL_COMMENT, CL_COMMENT)
define(SH_CL_STRING, CL_STRING)
define(SH_CL_CHAR, CL_CHAR)
define(SH_CL_SYMBOL, CL_SYMBOL)
define(SH_CL_SEPARATOR, CL_SEPARATOR)

define(SH_CL_SPECIALS, brightred)
define(SH_CL_STD_FUNC, cyan)
define(SH_CL_STD_VAR, brightred)
define(SH_CL_SEPARATOR_2, brightcyan)
define(SH_CL_FUNCTION_DEF, brightmagenta)

define(SH_CL_FIRSTLINE, CL_SCRIPT_FIRSTLINE)
define(SH_CL_SYS_COMMAND, lightgray black)
define(SH_CL_EXPRESSION, brightgreen)
define(SH_CL_VARIABLE, brightgreen)

ifelse(COLOR_SCHEME, <[bright]>, <[
# Bright color scheme
define(SH_CL_STD_FILE, brown)
]>, COLOR_SCHEME, <[dark]>, <[
# Dark background color scheme
define(SH_CL_STD_FILE, brightblue)
]>, <[
# Default color scheme
define(SH_CL_STD_FILE, brightblue)
]>)

divert<[]>dnl
context default<[]>SH_CL_DEFAULT
    keyword ;; SH_CL_SPECIALS
    keyword \\@ SH_CL_SPECIALS
    keyword \\$ SH_CL_SPECIALS
    keyword \\\\ SH_CL_SPECIALS
    keyword \\" SH_CL_SPECIALS
    keyword \\' SH_CL_SPECIALS
    keyword \\` SH_CL_SPECIALS
    keyword = SH_CL_SYMBOL
    keyword ` SH_CL_SPECIALS
    keyword ; SH_CL_SEPARATOR_2
    keyword $( SH_CL_SPECIALS
    keyword ) SH_CL_SPECIALS
    keyword ${*} SH_CL_EXPRESSION
    keyword { SH_CL_SEPARATOR_2
    keyword } SH_CL_SEPARATOR_2
    keyword [ SH_CL_SYMBOL
    keyword ] SH_CL_SYMBOL

    keyword whole linestart #!\[\s\]*\n SH_CL_FIRSTLINE

define(SH_STD_VAR,
<[    keyword $\* SH_CL_STD_VAR
    keyword $<[]>@ SH_CL_STD_VAR
    keyword $<[]># SH_CL_STD_VAR
    keyword $? SH_CL_STD_VAR
    keyword $- SH_CL_STD_VAR
    keyword $$ SH_CL_STD_VAR
    keyword $! SH_CL_STD_VAR
    keyword $_ SH_CL_STD_VAR
]>)dnl
define(SH_STD_REDIRECTION,
<[    keyword whole 2>&1 brightred
    keyword whole 1>&2 brightred
    keyword whole 2> brightred
    keyword whole 1> brightred
]>)dnl
define(SH_SPEC_VAR,
<[    keyword wholeright $\[0123456789\] SH_CL_STD_VAR

    keyword wholeright $+ SH_CL_VARIABLE

    keyword $ SH_CL_VARIABLE
]>)dnl
SH_STD_VAR
SH_STD_REDIRECTION
SH_SPEC_VAR<[]>dnl

    keyword wholeleft linestart function*() SH_CL_FUNCTION_DEF
    keyword wholeleft linestart function\[\s\]+ SH_CL_FUNCTION_DEF
    keyword wholeright +() SH_CL_FUNCTION_DEF
dnl
define(SH_STD_FUNC, <[
wholechars abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._

    keyword whole alias SH_CL_KEYWORD
    keyword whole bg SH_CL_KEYWORD
    keyword whole break SH_CL_KEYWORD
    keyword whole case SH_CL_KEYWORD
    keyword whole clear SH_CL_KEYWORD
    keyword whole continue SH_CL_KEYWORD
    keyword whole declare SH_CL_KEYWORD
    keyword whole done SH_CL_KEYWORD
    keyword whole do SH_CL_KEYWORD
    keyword whole elif SH_CL_KEYWORD
    keyword whole else SH_CL_KEYWORD
    keyword whole esac SH_CL_KEYWORD
    keyword whole exec SH_CL_KEYWORD
    keyword whole exit SH_CL_KEYWORD
    keyword whole export SH_CL_KEYWORD
    keyword whole fg SH_CL_KEYWORD
    keyword whole fi SH_CL_KEYWORD
    keyword whole for SH_CL_KEYWORD
    keyword whole getopts SH_CL_KEYWORD
    keyword whole if SH_CL_KEYWORD
    keyword whole in SH_CL_KEYWORD
    keyword whole read SH_CL_KEYWORD
    keyword whole return SH_CL_KEYWORD
    keyword whole select SH_CL_KEYWORD
    keyword whole shift SH_CL_KEYWORD
    keyword whole source SH_CL_KEYWORD
    keyword whole then SH_CL_KEYWORD
    keyword whole trap SH_CL_KEYWORD
    keyword whole umask SH_CL_KEYWORD
    keyword whole until SH_CL_KEYWORD
    keyword whole unset SH_CL_KEYWORD
    keyword whole wait SH_CL_KEYWORD
    keyword whole while SH_CL_KEYWORD

    keyword whole accept SH_CL_STD_FUNC
    keyword whole accessdb SH_CL_STD_FUNC
    keyword whole activate SH_CL_STD_FUNC
    keyword whole addgroup SH_CL_STD_FUNC
    keyword whole add-shell SH_CL_STD_FUNC
    keyword whole adduser SH_CL_STD_FUNC
    keyword whole anytopnm SH_CL_STD_FUNC
    keyword whole apropos SH_CL_STD_FUNC
    keyword whole apt-cache SH_CL_STD_FUNC
    keyword whole apt-cdrom SH_CL_STD_FUNC
    keyword whole apt-config SH_CL_STD_FUNC
    keyword whole apt-file SH_CL_STD_FUNC
    keyword whole apt-ftparchive SH_CL_STD_FUNC
    keyword whole apt-get SH_CL_STD_FUNC
    keyword whole aptitude SH_CL_STD_FUNC
    keyword whole apt-sortpkgs SH_CL_STD_FUNC
    keyword whole apt-source SH_CL_STD_FUNC
    keyword whole ar SH_CL_STD_FUNC
    keyword whole arch SH_CL_STD_FUNC
    keyword whole arp SH_CL_STD_FUNC
    keyword whole as SH_CL_STD_FUNC
    keyword whole ash SH_CL_STD_FUNC
    keyword whole at SH_CL_STD_FUNC
    keyword whole atd SH_CL_STD_FUNC
    keyword whole atrun SH_CL_STD_FUNC
    keyword whole atq SH_CL_STD_FUNC
    keyword whole autoconf SH_CL_STD_FUNC
    keyword whole autoheader SH_CL_STD_FUNC
    keyword whole automake SH_CL_STD_FUNC
    keyword whole autopoint SH_CL_STD_FUNC
    keyword whole autoscan SH_CL_STD_FUNC
    keyword whole awk SH_CL_STD_FUNC
    keyword whole badblocks SH_CL_STD_FUNC
    keyword whole base64-decode SH_CL_STD_FUNC
    keyword whole base64-encode SH_CL_STD_FUNC
    keyword whole basename SH_CL_STD_FUNC
    keyword whole bash SH_CL_STD_FUNC
    keyword whole batch SH_CL_STD_FUNC
    keyword whole bc SH_CL_STD_FUNC
    keyword whole bg_backup SH_CL_STD_FUNC
    keyword whole bg_restore SH_CL_STD_FUNC
    keyword whole blockdev SH_CL_STD_FUNC
    keyword whole bootlogd SH_CL_STD_FUNC
    keyword whole bsd-write SH_CL_STD_FUNC
    keyword whole bsh SH_CL_STD_FUNC
    keyword whole bunzip2 SH_CL_STD_FUNC
    keyword whole bzcat SH_CL_STD_FUNC
    keyword whole bzcmp SH_CL_STD_FUNC
    keyword whole bzdiff SH_CL_STD_FUNC
    keyword whole bzegrep SH_CL_STD_FUNC
    keyword whole bzexe SH_CL_STD_FUNC
    keyword whole bzfgrep SH_CL_STD_FUNC
    keyword whole bzgrep SH_CL_STD_FUNC
    keyword whole bzip SH_CL_STD_FUNC
    keyword whole bzip2 SH_CL_STD_FUNC
    keyword whole bzip2recover SH_CL_STD_FUNC
    keyword whole bzless SH_CL_STD_FUNC
    keyword whole bzmore SH_CL_STD_FUNC
    keyword whole cabextract SH_CL_STD_FUNC
    keyword whole cal SH_CL_STD_FUNC
    keyword whole calendar SH_CL_STD_FUNC
    keyword whole cam SH_CL_STD_FUNC
    keyword whole cancel SH_CL_STD_FUNC
    keyword whole captoinfo SH_CL_STD_FUNC
    keyword whole cat SH_CL_STD_FUNC
    keyword whole catchsegv SH_CL_STD_FUNC
    keyword whole catman SH_CL_STD_FUNC
    keyword whole cd SH_CL_STD_FUNC
    keyword whole cdda2ogg SH_CL_STD_FUNC
    keyword whole cdda2mp3 SH_CL_STD_FUNC
    keyword whole cdda2wav SH_CL_STD_FUNC
    keyword whole cdrecord SH_CL_STD_FUNC
    keyword whole cfdisk SH_CL_STD_FUNC
    keyword whole chage SH_CL_STD_FUNC
    keyword whole charset SH_CL_STD_FUNC
    keyword whole chattr SH_CL_STD_FUNC
    keyword whole checkbashisms SH_CL_STD_FUNC
    keyword whole chfn SH_CL_STD_FUNC
    keyword whole chgrp SH_CL_STD_FUNC
    keyword whole chkdupexe SH_CL_STD_FUNC
    keyword whole chmod SH_CL_STD_FUNC
    keyword whole chown SH_CL_STD_FUNC
    keyword whole chpasswd SH_CL_STD_FUNC
    keyword whole chroot SH_CL_STD_FUNC
    keyword whole chsh SH_CL_STD_FUNC
    keyword whole chvt SH_CL_STD_FUNC
    keyword whole cksum SH_CL_STD_FUNC
    keyword whole clear SH_CL_STD_FUNC
    keyword whole cmp SH_CL_STD_FUNC
    keyword whole codepage SH_CL_STD_FUNC
    keyword whole col SH_CL_STD_FUNC
    keyword whole colcrt SH_CL_STD_FUNC
    keyword whole colrm SH_CL_STD_FUNC
    keyword whole column SH_CL_STD_FUNC
    keyword whole comm SH_CL_STD_FUNC
    keyword whole compose SH_CL_STD_FUNC
    keyword whole compress SH_CL_STD_FUNC
    keyword whole consolechars SH_CL_STD_FUNC
    keyword whole cp SH_CL_STD_FUNC
    keyword whole cpan SH_CL_STD_FUNC
    keyword whole cpgr SH_CL_STD_FUNC
    keyword whole cpio SH_CL_STD_FUNC
    keyword whole cpp SH_CL_STD_FUNC
    keyword whole cramfsck SH_CL_STD_FUNC
    keyword whole createdb SH_CL_STD_FUNC
    keyword whole createlang SH_CL_STD_FUNC
    keyword whole createuser SH_CL_STD_FUNC
    keyword whole c_rehash SH_CL_STD_FUNC
    keyword whole crontab SH_CL_STD_FUNC
    keyword whole csh SH_CL_STD_FUNC
    keyword whole csplit SH_CL_STD_FUNC
    keyword whole cupsaccept SH_CL_STD_FUNC
    keyword whole cupsaddsmb SH_CL_STD_FUNC
    keyword whole cupsd SH_CL_STD_FUNC
    keyword whole cupsreject SH_CL_STD_FUNC
    keyword whole curl SH_CL_STD_FUNC
    keyword whole cut SH_CL_STD_FUNC
    keyword whole date SH_CL_STD_FUNC
    keyword whole dash SH_CL_STD_FUNC
    keyword whole dch SH_CL_STD_FUNC
    keyword whole dd SH_CL_STD_FUNC
    keyword whole deallocvt SH_CL_STD_FUNC
    keyword whole debugfs SH_CL_STD_FUNC
    keyword whole delgroup SH_CL_STD_FUNC
    keyword whole deluser SH_CL_STD_FUNC
    keyword whole depmod SH_CL_STD_FUNC
    keyword whole devdump SH_CL_STD_FUNC
    keyword whole df SH_CL_STD_FUNC
    keyword whole dialog SH_CL_STD_FUNC
    keyword whole diff SH_CL_STD_FUNC
    keyword whole diff3 SH_CL_STD_FUNC
    keyword whole dir SH_CL_STD_FUNC
    keyword whole dircolors SH_CL_STD_FUNC
    keyword whole directomatic SH_CL_STD_FUNC
    keyword whole dirname SH_CL_STD_FUNC
    keyword whole dirsplit SH_CL_STD_FUNC
    keyword whole disable SH_CL_STD_FUNC
    keyword whole diskd SH_CL_STD_FUNC
    keyword whole diskseekd SH_CL_STD_FUNC
    keyword whole disown SH_CL_STD_FUNC
    keyword whole dmesg SH_CL_STD_FUNC
    keyword whole dnsdomainname SH_CL_STD_FUNC
    keyword whole doexec SH_CL_STD_FUNC
    keyword whole domainname SH_CL_STD_FUNC
    keyword whole dosfsck SH_CL_STD_FUNC
    keyword whole dotextwrap SH_CL_STD_FUNC
    keyword whole dotlockfile SH_CL_STD_FUNC
    keyword whole dpasswd SH_CL_STD_FUNC
    keyword whole dpkg SH_CL_STD_FUNC
    keyword whole dpkg-architekture SH_CL_STD_FUNC
    keyword whole dpkg-buildpackage SH_CL_STD_FUNC
    keyword whole dpkg-deb SH_CL_STD_FUNC
    keyword whole dpkg-name SH_CL_STD_FUNC
    keyword whole dpkg-query SH_CL_STD_FUNC
    keyword whole dpkg-reconfigure SH_CL_STD_FUNC
    keyword whole dpkg-scanpackages SH_CL_STD_FUNC
    keyword whole dpkg-scansources SH_CL_STD_FUNC
    keyword whole dpkg-split SH_CL_STD_FUNC
    keyword whole dpkg-source SH_CL_STD_FUNC
    keyword whole dropdb SH_CL_STD_FUNC
    keyword whole droplang SH_CL_STD_FUNC
    keyword whole dropuser SH_CL_STD_FUNC
    keyword whole dscverify SH_CL_STD_FUNC
    keyword whole du SH_CL_STD_FUNC
    keyword whole dumpe2fs SH_CL_STD_FUNC
    keyword whole dumpkeys SH_CL_STD_FUNC
    keyword whole dvipdf SH_CL_STD_FUNC
    keyword whole e2fsck SH_CL_STD_FUNC
    keyword whole e2image SH_CL_STD_FUNC
    keyword whole e2label SH_CL_STD_FUNC
    keyword whole echo SH_CL_STD_FUNC
    keyword whole ed SH_CL_STD_FUNC
    keyword whole edit SH_CL_STD_FUNC
    keyword whole editor SH_CL_STD_FUNC
    keyword whole egrep SH_CL_STD_FUNC
    keyword whole eject SH_CL_STD_FUNC
    keyword whole enable SH_CL_STD_FUNC
    keyword whole env SH_CL_STD_FUNC
    keyword whole envsubst SH_CL_STD_FUNC
    keyword whole eqn SH_CL_STD_FUNC
    keyword whole eval_gettext SH_CL_STD_FUNC
    keyword whole ex SH_CL_STD_FUNC
    keyword whole expand SH_CL_STD_FUNC
    keyword whole expiry SH_CL_STD_FUNC
    keyword whole expr SH_CL_STD_FUNC
    keyword whole factor SH_CL_STD_FUNC
    keyword whole fakeroot SH_CL_STD_FUNC
    keyword whole faillog SH_CL_STD_FUNC
    keyword whole false SH_CL_STD_FUNC
    keyword whole fbset SH_CL_STD_FUNC
    keyword whole fc-cache SH_CL_STD_FUNC
    keyword whole fc-list SH_CL_STD_FUNC
    keyword whole fc-match SH_CL_STD_FUNC
    keyword whole fdformat SH_CL_STD_FUNC
    keyword whole fdisk SH_CL_STD_FUNC
    keyword whole fdlist SH_CL_STD_FUNC
    keyword whole fdmount SH_CL_STD_FUNC
    keyword whole fdmountd SH_CL_STD_FUNC
    keyword whole fdrawcmd SH_CL_STD_FUNC
    keyword whole fdumount SH_CL_STD_FUNC
    keyword whole fetchmail SH_CL_STD_FUNC
    keyword whole fgconsole SH_CL_STD_FUNC
    keyword whole fgrep SH_CL_STD_FUNC
    keyword whole file SH_CL_STD_FUNC
    keyword whole filefrag SH_CL_STD_FUNC
    keyword whole find SH_CL_STD_FUNC
    keyword whole find2perl SH_CL_STD_FUNC
    keyword whole findfs SH_CL_STD_FUNC
    keyword whole fitstopnm SH_CL_STD_FUNC
    keyword whole floppycontrol SH_CL_STD_FUNC
    keyword whole floppymeter SH_CL_STD_FUNC
    keyword whole fmt SH_CL_STD_FUNC
    keyword whole fold SH_CL_STD_FUNC
    keyword whole font2psf SH_CL_STD_FUNC
    keyword whole formail SH_CL_STD_FUNC
    keyword whole fping SH_CL_STD_FUNC
    keyword whole fping6 SH_CL_STD_FUNC
    keyword whole free SH_CL_STD_FUNC
    keyword whole freeze SH_CL_STD_FUNC
    keyword whole fribidi SH_CL_STD_FUNC
    keyword whole from SH_CL_STD_FUNC
    keyword whole fsck SH_CL_STD_FUNC
    keyword whole fsck.cramfs SH_CL_STD_FUNC
    keyword whole fsck.ext2 SH_CL_STD_FUNC
    keyword whole fsck.ext3 SH_CL_STD_FUNC
    keyword whole fsck.minix SH_CL_STD_FUNC
    keyword whole fsck.msdos SH_CL_STD_FUNC
    keyword whole fsck.nfs SH_CL_STD_FUNC
    keyword whole fsck.vfat SH_CL_STD_FUNC
    keyword whole fsconf SH_CL_STD_FUNC
    keyword whole funzip SH_CL_STD_FUNC
    keyword whole fuser SH_CL_STD_FUNC
    keyword whole fvwm SH_CL_STD_FUNC
    keyword whole gawk SH_CL_STD_FUNC
    keyword whole gdb SH_CL_STD_FUNC
    keyword whole gdbtui SH_CL_STD_FUNC
    keyword whole gcc SH_CL_STD_FUNC
    keyword whole gcov SH_CL_STD_FUNC
    keyword whole genksyms SH_CL_STD_FUNC
    keyword whole getconf SH_CL_STD_FUNC
    keyword whole getent SH_CL_STD_FUNC
    keyword whole getfdprm SH_CL_STD_FUNC
    keyword whole getkeycodes SH_CL_STD_FUNC
    keyword whole getopt SH_CL_STD_FUNC
    keyword whole gettext SH_CL_STD_FUNC
    keyword whole gettextize SH_CL_STD_FUNC
    keyword whole getty SH_CL_STD_FUNC
    keyword whole gpasswd SH_CL_STD_FUNC
    keyword whole gpgsplit SH_CL_STD_FUNC
    keyword whole gpgv SH_CL_STD_FUNC
    keyword whole gprof SH_CL_STD_FUNC
    keyword whole grep SH_CL_STD_FUNC
    keyword whole groff SH_CL_STD_FUNC
    keyword whole groupadd SH_CL_STD_FUNC
    keyword whole groupdel SH_CL_STD_FUNC
    keyword whole groupmod SH_CL_STD_FUNC
    keyword whole groups SH_CL_STD_FUNC
    keyword whole grpck SH_CL_STD_FUNC
    keyword whole grpconv SH_CL_STD_FUNC
    keyword whole grpunconv SH_CL_STD_FUNC
    keyword whole gs SH_CL_STD_FUNC
    keyword whole gsbj SH_CL_STD_FUNC
    keyword whole gsdj SH_CL_STD_FUNC
    keyword whole gsdj500 SH_CL_STD_FUNC
    keyword whole gs-gpl SH_CL_STD_FUNC
    keyword whole gslj SH_CL_STD_FUNC
    keyword whole gslp SH_CL_STD_FUNC
    keyword whole gsmctl SH_CL_STD_FUNC
    keyword whole gsmpb SH_CL_STD_FUNC
    keyword whole gsmsendsms SH_CL_STD_FUNC
    keyword whole gsmsiectl SH_CL_STD_FUNC
    keyword whole gsmsiexfer SH_CL_STD_FUNC
    keyword whole gsmsmsd SH_CL_STD_FUNC
    keyword whole gsmsmsstore SH_CL_STD_FUNC
    keyword whole gsnd SH_CL_STD_FUNC
    keyword whole gunzip SH_CL_STD_FUNC
    keyword whole gzexe SH_CL_STD_FUNC
    keyword whole gzip SH_CL_STD_FUNC
    keyword whole ha SH_CL_STD_FUNC
    keyword whole halt SH_CL_STD_FUNC
    keyword whole hd SH_CL_STD_FUNC
    keyword whole hdparm SH_CL_STD_FUNC
    keyword whole hddtemp SH_CL_STD_FUNC
    keyword whole head SH_CL_STD_FUNC
    keyword whole hexdump SH_CL_STD_FUNC
    keyword whole hman SH_CL_STD_FUNC
    keyword whole host SH_CL_STD_FUNC
    keyword whole hostid SH_CL_STD_FUNC
    keyword whole hostname SH_CL_STD_FUNC
    keyword whole hotkeys SH_CL_STD_FUNC
    keyword whole html2text SH_CL_STD_FUNC
    keyword whole hwclock SH_CL_STD_FUNC
    keyword whole iconv SH_CL_STD_FUNC
    keyword whole iconvconfig SH_CL_STD_FUNC
    keyword whole id SH_CL_STD_FUNC
    keyword whole ifconfig SH_CL_STD_FUNC
    keyword whole ifdown SH_CL_STD_FUNC
    keyword whole ifnames SH_CL_STD_FUNC
    keyword whole ifup SH_CL_STD_FUNC
    keyword whole igawk SH_CL_STD_FUNC
    keyword whole info SH_CL_STD_FUNC
    keyword whole infobrowser SH_CL_STD_FUNC
    keyword whole infocmp SH_CL_STD_FUNC
    keyword whole infokey SH_CL_STD_FUNC
    keyword whole infotocap SH_CL_STD_FUNC
    keyword whole init SH_CL_STD_FUNC
    keyword whole insmod SH_CL_STD_FUNC
    keyword whole install SH_CL_STD_FUNC
    keyword whole installkernel SH_CL_STD_FUNC
    keyword whole install-menu SH_CL_STD_FUNC
    keyword whole ipcalc SH_CL_STD_FUNC
    keyword whole ipcs SH_CL_STD_FUNC
    keyword whole ipmaddr SH_CL_STD_FUNC
    keyword whole ippool SH_CL_STD_FUNC
    keyword whole iptables SH_CL_STD_FUNC
    keyword whole iptunnel SH_CL_STD_FUNC
    keyword whole isoinfo SH_CL_STD_FUNC
    keyword whole join SH_CL_STD_FUNC
    keyword whole kallsyms SH_CL_STD_FUNC
    keyword whole kbdconfig SH_CL_STD_FUNC
    keyword whole kbd_mode SH_CL_STD_FUNC
    keyword whole kbdrate SH_CL_STD_FUNC
    keyword whole klogd SH_CL_STD_FUNC
    keyword whole kernelversion SH_CL_STD_FUNC
    keyword whole kill SH_CL_STD_FUNC
    keyword whole killall SH_CL_STD_FUNC
    keyword whole ksh SH_CL_STD_FUNC
    keyword whole ksyms SH_CL_STD_FUNC
    keyword whole lame SH_CL_STD_FUNC
    keyword whole last SH_CL_STD_FUNC
    keyword whole lastb SH_CL_STD_FUNC
    keyword whole lastlog SH_CL_STD_FUNC
    keyword whole ld SH_CL_STD_FUNC
    keyword whole ldconfig SH_CL_STD_FUNC
    keyword whole ldd SH_CL_STD_FUNC
    keyword whole less SH_CL_STD_FUNC
    keyword whole lessecho SH_CL_STD_FUNC
    keyword whole lessfile SH_CL_STD_FUNC
    keyword whole lesskey SH_CL_STD_FUNC
    keyword whole lesspipe SH_CL_STD_FUNC
    keyword whole lharc SH_CL_STD_FUNC
    keyword whole libtool SH_CL_STD_FUNC
    keyword whole lilo SH_CL_STD_FUNC
    keyword whole line SH_CL_STD_FUNC
    keyword whole link SH_CL_STD_FUNC
    keyword whole links2 SH_CL_STD_FUNC
    keyword whole linux_logo SH_CL_STD_FUNC
    keyword whole linuxconf SH_CL_STD_FUNC
    keyword whole list_audio_tracks SH_CL_STD_FUNC
    keyword whole ln SH_CL_STD_FUNC
    keyword whole loadkeys SH_CL_STD_FUNC
    keyword whole locale SH_CL_STD_FUNC
    keyword whole localedef SH_CL_STD_FUNC
    keyword whole locale-gen SH_CL_STD_FUNC
    keyword whole locate SH_CL_STD_FUNC
    keyword whole lockfile SH_CL_STD_FUNC
    keyword whole logger SH_CL_STD_FUNC
    keyword whole login SH_CL_STD_FUNC
    keyword whole logname SH_CL_STD_FUNC
    keyword whole logrotate SH_CL_STD_FUNC
    keyword whole logsave SH_CL_STD_FUNC
    keyword whole look SH_CL_STD_FUNC
    keyword whole lorder SH_CL_STD_FUNC
    keyword whole losetup SH_CL_STD_FUNC
    keyword whole lp SH_CL_STD_FUNC
    keyword whole lpadmin SH_CL_STD_FUNC
    keyword whole lpc SH_CL_STD_FUNC
    keyword whole lpdconf SH_CL_STD_FUNC
    keyword whole lpdomatic SH_CL_STD_FUNC
    keyword whole lpinfo SH_CL_STD_FUNC
    keyword whole lpmove SH_CL_STD_FUNC
    keyword whole lpoptions SH_CL_STD_FUNC
    keyword whole lppasswd SH_CL_STD_FUNC
    keyword whole lpq SH_CL_STD_FUNC
    keyword whole lpr SH_CL_STD_FUNC
    keyword whole lprm SH_CL_STD_FUNC
    keyword whole lprsetup SH_CL_STD_FUNC
    keyword whole lpstat SH_CL_STD_FUNC
    keyword whole ls SH_CL_STD_FUNC
    keyword whole lsattr SH_CL_STD_FUNC
    keyword whole lsmod SH_CL_STD_FUNC
    keyword whole lspci SH_CL_STD_FUNC
    keyword whole lsusb SH_CL_STD_FUNC
    keyword whole lzip SH_CL_STD_FUNC
    keyword whole lziprecover SH_CL_STD_FUNC
    keyword whole lynx SH_CL_STD_FUNC
    keyword whole MAKEDEV SH_CL_STD_FUNC
    keyword whole MAKEFLOPPIES SH_CL_STD_FUNC
    keyword whole mail SH_CL_STD_FUNC
    keyword whole mailq SH_CL_STD_FUNC
    keyword whole mailstat SH_CL_STD_FUNC
    keyword whole mailx SH_CL_STD_FUNC
    keyword whole make SH_CL_STD_FUNC
    keyword whole make-kpkg SH_CL_STD_FUNC
    keyword whole man SH_CL_STD_FUNC
    keyword whole man2html SH_CL_STD_FUNC
    keyword whole manpath SH_CL_STD_FUNC
    keyword whole mawk SH_CL_STD_FUNC
    keyword whole mc SH_CL_STD_FUNC
    keyword whole mcedit SH_CL_STD_FUNC
    keyword whole mcookie SH_CL_STD_FUNC
    keyword whole mcview SH_CL_STD_FUNC
    keyword whole mcmfmt SH_CL_STD_FUNC
    keyword whole memstat SH_CL_STD_FUNC
    keyword whole mergechanges SH_CL_STD_FUNC
    keyword whole mesg SH_CL_STD_FUNC
    keyword whole mev SH_CL_STD_FUNC
    keyword whole mkboot SH_CL_STD_FUNC
    keyword whole mkfifo SH_CL_STD_FUNC
    keyword whole mkhybrid SH_CL_STD_FUNC
    keyword whole mkisofs SH_CL_STD_FUNC
    keyword whole mk_modmap SH_CL_STD_FUNC
    keyword whole mkpasswd SH_CL_STD_FUNC
    keyword whole mii-tool SH_CL_STD_FUNC
    keyword whole mimedecode SH_CL_STD_FUNC
    keyword whole mkcramfs SH_CL_STD_FUNC
    keyword whole mkdir SH_CL_STD_FUNC
    keyword whole mkdirhier SH_CL_STD_FUNC
    keyword whole mkfs SH_CL_STD_FUNC
    keyword whole mkfs.cramfs SH_CL_STD_FUNC
    keyword whole mkfs.ext2 SH_CL_STD_FUNC
    keyword whole mkfs.ext3 SH_CL_STD_FUNC
    keyword whole mkfs.minix SH_CL_STD_FUNC
    keyword whole mkfs.msdos SH_CL_STD_FUNC
    keyword whole mkfs.vfat SH_CL_STD_FUNC
    keyword whole mke2fs SH_CL_STD_FUNC
    keyword whole mkdosfs SH_CL_STD_FUNC
    keyword whole mkinitrd SH_CL_STD_FUNC
    keyword whole mknod SH_CL_STD_FUNC
    keyword whole mkrescue SH_CL_STD_FUNC
    keyword whole mkswap SH_CL_STD_FUNC
    keyword whole mktemp SH_CL_STD_FUNC
    keyword whole modconf SH_CL_STD_FUNC
    keyword whole modinfo SH_CL_STD_FUNC
    keyword whole modprobe SH_CL_STD_FUNC
    keyword whole more SH_CL_STD_FUNC
    keyword whole mount SH_CL_STD_FUNC
    keyword whole mountpoint SH_CL_STD_FUNC
    keyword whole mozilla SH_CL_STD_FUNC
    keyword whole mp3info SH_CL_STD_FUNC
    keyword whole mpexpand SH_CL_STD_FUNC
    keyword whole munpack SH_CL_STD_FUNC
    keyword whole msgattrib SH_CL_STD_FUNC
    keyword whole msgcat SH_CL_STD_FUNC
    keyword whole msgcmp SH_CL_STD_FUNC
    keyword whole msgcomm SH_CL_STD_FUNC
    keyword whole msgconv SH_CL_STD_FUNC
    keyword whole msgen SH_CL_STD_FUNC
    keyword whole msgexec SH_CL_STD_FUNC
    keyword whole msgfilter SH_CL_STD_FUNC
    keyword whole msgfmt SH_CL_STD_FUNC
    keyword whole msggrep SH_CL_STD_FUNC
    keyword whole msginit SH_CL_STD_FUNC
    keyword whole msgmerge SH_CL_STD_FUNC
    keyword whole msgunfmt SH_CL_STD_FUNC
    keyword whole msguniq SH_CL_STD_FUNC
    keyword whole msmtp SH_CL_STD_FUNC
    keyword whole mt SH_CL_STD_FUNC
    keyword whole mt-gnu SH_CL_STD_FUNC
    keyword whole mtrace SH_CL_STD_FUNC
    keyword whole mute SH_CL_STD_FUNC
    keyword whole mutt SH_CL_STD_FUNC
    keyword whole mv SH_CL_STD_FUNC
    keyword whole nameif SH_CL_STD_FUNC
    keyword whole namei SH_CL_STD_FUNC
    keyword whole nano SH_CL_STD_FUNC
    keyword whole nawk SH_CL_STD_FUNC
    keyword whole ncal SH_CL_STD_FUNC
    keyword whole neqn SH_CL_STD_FUNC
    keyword whole netconf SH_CL_STD_FUNC
    keyword whole netstat SH_CL_STD_FUNC
    keyword whole newaliases SH_CL_STD_FUNC
    keyword whole newgrp SH_CL_STD_FUNC
    keyword whole newusers SH_CL_STD_FUNC
    keyword whole nex SH_CL_STD_FUNC
    keyword whole nfsstat SH_CL_STD_FUNC
    keyword whole ngettext SH_CL_STD_FUNC
    keyword whole nice SH_CL_STD_FUNC
    keyword whole nisdomainname SH_CL_STD_FUNC
    keyword whole nl SH_CL_STD_FUNC
    keyword whole nm SH_CL_STD_FUNC
    keyword whole nohup SH_CL_STD_FUNC
    keyword whole nroff SH_CL_STD_FUNC
    keyword whole nsmod SH_CL_STD_FUNC
    keyword whole nvi SH_CL_STD_FUNC
    keyword whole nview SH_CL_STD_FUNC
    keyword whole objcopy SH_CL_STD_FUNC
    keyword whole objdump SH_CL_STD_FUNC
    keyword whole od SH_CL_STD_FUNC
    keyword whole ogg123 SH_CL_STD_FUNC
    keyword whole oggdec SH_CL_STD_FUNC
    keyword whole oggenc SH_CL_STD_FUNC
    keyword whole ogginfo SH_CL_STD_FUNC
    keyword whole open SH_CL_STD_FUNC
    keyword whole openvt SH_CL_STD_FUNC
    keyword whole pager SH_CL_STD_FUNC
    keyword whole pam_getenv SH_CL_STD_FUNC
    keyword whole paperconf SH_CL_STD_FUNC
    keyword whole par SH_CL_STD_FUNC
    keyword whole passwd SH_CL_STD_FUNC
    keyword whole paste SH_CL_STD_FUNC
    keyword whole patch SH_CL_STD_FUNC
    keyword whole pathchk SH_CL_STD_FUNC
    keyword whole pcimodules SH_CL_STD_FUNC
    keyword whole pcretest SH_CL_STD_FUNC
    keyword whole pdfinfo SH_CL_STD_FUNC
    keyword whole perl SH_CL_STD_FUNC
    keyword whole perldoc SH_CL_STD_FUNC
    keyword whole pg SH_CL_STD_FUNC
    keyword whole pgrep SH_CL_STD_FUNC
    keyword whole pic SH_CL_STD_FUNC
    keyword whole pico SH_CL_STD_FUNC
    keyword whole piconv SH_CL_STD_FUNC
    keyword whole pidof SH_CL_STD_FUNC
    keyword whole pinfo SH_CL_STD_FUNC
    keyword whole ping SH_CL_STD_FUNC
    keyword whole pkill SH_CL_STD_FUNC
    keyword whole pmap SH_CL_STD_FUNC
    keyword whole portmap SH_CL_STD_FUNC
    keyword whole poweroff SH_CL_STD_FUNC
    keyword whole pr SH_CL_STD_FUNC
    keyword whole print SH_CL_STD_FUNC
    keyword whole printenv SH_CL_STD_FUNC
    keyword whole printf SH_CL_STD_FUNC
    keyword whole procmail SH_CL_STD_FUNC
    keyword whole prove SH_CL_STD_FUNC
    keyword whole ps SH_CL_STD_FUNC
    keyword whole psed SH_CL_STD_FUNC
    keyword whole psql SH_CL_STD_FUNC
    keyword whole pstree SH_CL_STD_FUNC
    keyword whole pstruct SH_CL_STD_FUNC
    keyword whole ptx SH_CL_STD_FUNC
    keyword whole pwconv SH_CL_STD_FUNC
    keyword whole pwck SH_CL_STD_FUNC
    keyword whole pwd SH_CL_STD_FUNC
    keyword whole pwunconv SH_CL_STD_FUNC
    keyword whole ramsize SH_CL_STD_FUNC
    keyword whole ranlib SH_CL_STD_FUNC
    keyword whole rar SH_CL_STD_FUNC
    keyword whole rarp SH_CL_STD_FUNC
    keyword whole raw SH_CL_STD_FUNC
    keyword whole rbash SH_CL_STD_FUNC
    keyword whole rcp SH_CL_STD_FUNC
    keyword whole rdev SH_CL_STD_FUNC
    keyword whole readcd SH_CL_STD_FUNC
    keyword whole readelf SH_CL_STD_FUNC
    keyword whole readlink SH_CL_STD_FUNC
    keyword whole readprofile SH_CL_STD_FUNC
    keyword whole reboot SH_CL_STD_FUNC
    keyword whole red SH_CL_STD_FUNC
    keyword whole regcomp SH_CL_STD_FUNC
    keyword whole reject SH_CL_STD_FUNC
    keyword whole remadmin SH_CL_STD_FUNC
    keyword whole remove-shell SH_CL_STD_FUNC
    keyword whole rename SH_CL_STD_FUNC
    keyword whole renice SH_CL_STD_FUNC
    keyword whole reset SH_CL_STD_FUNC
    keyword whole resize2fs SH_CL_STD_FUNC
    keyword whole rev SH_CL_STD_FUNC
    keyword whole revpath SH_CL_STD_FUNC
    keyword whole rgrep SH_CL_STD_FUNC
    keyword whole rlogin SH_CL_STD_FUNC
    keyword whole rm SH_CL_STD_FUNC
    keyword whole rmdir SH_CL_STD_FUNC
    keyword whole rmmod SH_CL_STD_FUNC
    keyword whole rmt SH_CL_STD_FUNC
    keyword whole route SH_CL_STD_FUNC
    keyword whole rpcgen SH_CL_STD_FUNC
    keyword whole rpcinfo SH_CL_STD_FUNC
    keyword whole rplay SH_CL_STD_FUNC
    keyword whole rplayd SH_CL_STD_FUNC
    keyword whole rplaydsp SH_CL_STD_FUNC
    keyword whole rpm SH_CL_STD_FUNC
    keyword whole rpm2cpio SH_CL_STD_FUNC
    keyword whole rptp SH_CL_STD_FUNC
    keyword whole rsh SH_CL_STD_FUNC
    keyword whole rstartd SH_CL_STD_FUNC
    keyword whole runlevel SH_CL_STD_FUNC
    keyword whole run-mailcap SH_CL_STD_FUNC
    keyword whole run-parts SH_CL_STD_FUNC
    keyword whole savelog SH_CL_STD_FUNC
    keyword whole scanimage SH_CL_STD_FUNC
    keyword whole scanpci SH_CL_STD_FUNC
    keyword whole screendump SH_CL_STD_FUNC
    keyword whole script SH_CL_STD_FUNC
    keyword whole scriptreplay SH_CL_STD_FUNC
    keyword whole sdiff SH_CL_STD_FUNC
    keyword whole sed SH_CL_STD_FUNC
    keyword whole see SH_CL_STD_FUNC
    keyword whole sendmail SH_CL_STD_FUNC
    keyword whole seq SH_CL_STD_FUNC
    keyword whole set SH_CL_STD_FUNC
    keyword whole setfdprm SH_CL_STD_FUNC
    keyword whole setkeycodes SH_CL_STD_FUNC
    keyword whole setleds SH_CL_STD_FUNC
    keyword whole setlogcons SH_CL_STD_FUNC
    keyword whole setmetamode SH_CL_STD_FUNC
    keyword whole setpci SH_CL_STD_FUNC
    keyword whole setserial SH_CL_STD_FUNC
    keyword whole setsid SH_CL_STD_FUNC
    keyword whole setterm SH_CL_STD_FUNC
    keyword whole setvesablank SH_CL_STD_FUNC
    keyword whole setxkbmap SH_CL_STD_FUNC
    keyword whole sfdisk SH_CL_STD_FUNC
    keyword whole sftp SH_CL_STD_FUNC
    keyword whole sg SH_CL_STD_FUNC
    keyword whole sh SH_CL_STD_FUNC
    keyword whole sha1sum SH_CL_STD_FUNC
    keyword whole shadowconfig SH_CL_STD_FUNC
    keyword whole showcfont SH_CL_STD_FUNC
    keyword whole showkey SH_CL_STD_FUNC
    keyword whole showmount SH_CL_STD_FUNC
    keyword whole shred SH_CL_STD_FUNC
    keyword whole shutdown SH_CL_STD_FUNC
    keyword whole size SH_CL_STD_FUNC
    keyword whole skill SH_CL_STD_FUNC
    keyword whole slabtop SH_CL_STD_FUNC
    keyword whole slattach SH_CL_STD_FUNC
    keyword whole sleep SH_CL_STD_FUNC
    keyword whole slogin SH_CL_STD_FUNC
    keyword whole smime_keys SH_CL_STD_FUNC
    keyword whole snice SH_CL_STD_FUNC
    keyword whole soelim SH_CL_STD_FUNC
    keyword whole sort SH_CL_STD_FUNC
    keyword whole sa-learn SH_CL_STD_FUNC
    keyword whole spamassassin SH_CL_STD_FUNC
    keyword whole spamc SH_CL_STD_FUNC
    keyword whole spamd SH_CL_STD_FUNC
    keyword whole splain SH_CL_STD_FUNC
    keyword whole split SH_CL_STD_FUNC
    keyword whole ssh-add SH_CL_STD_FUNC
    keyword whole ssh-copy-id SH_CL_STD_FUNC
    keyword whole ssh-keygen SH_CL_STD_FUNC
    keyword whole ssh-keyscan SH_CL_STD_FUNC
    keyword whole ssmtp SH_CL_STD_FUNC
    keyword whole start-stop-daemon SH_CL_STD_FUNC
    keyword whole stat SH_CL_STD_FUNC
    keyword whole strace SH_CL_STD_FUNC
    keyword whole strings SH_CL_STD_FUNC
    keyword whole strip SH_CL_STD_FUNC
    keyword whole stty SH_CL_STD_FUNC
    keyword whole su SH_CL_STD_FUNC
    keyword whole sudo SH_CL_STD_FUNC
    keyword whole sulogin SH_CL_STD_FUNC
    keyword whole sum SH_CL_STD_FUNC
    keyword whole superformat SH_CL_STD_FUNC
    keyword whole su-to-root SH_CL_STD_FUNC
    keyword whole svlc SH_CL_STD_FUNC
    keyword whole swapoff SH_CL_STD_FUNC
    keyword whole swapon SH_CL_STD_FUNC
    keyword whole sync SH_CL_STD_FUNC
    keyword whole sysctl SH_CL_STD_FUNC
    keyword whole syslogd SH_CL_STD_FUNC
    keyword whole syslogd-listfiles SH_CL_STD_FUNC
    keyword whole syslog-facility SH_CL_STD_FUNC
    keyword whole tac SH_CL_STD_FUNC
    keyword whole tack SH_CL_STD_FUNC
    keyword whole tail SH_CL_STD_FUNC
    keyword whole taper SH_CL_STD_FUNC
    keyword whole tar SH_CL_STD_FUNC
    keyword whole tbl SH_CL_STD_FUNC
    keyword whole tcpdchk SH_CL_STD_FUNC
    keyword whole tcpdump SH_CL_STD_FUNC
    keyword whole tclsh SH_CL_STD_FUNC
    keyword whole tcsh SH_CL_STD_FUNC
    keyword whole tdbox SH_CL_STD_FUNC
    keyword whole tdcheckserver SH_CL_STD_FUNC
    keyword whole tddebidate SH_CL_STD_FUNC
    keyword whole tdfileview SH_CL_STD_FUNC
    keyword whole tdfmlogstrip SH_CL_STD_FUNC
    keyword whole tdformail SH_CL_STD_FUNC
    keyword whole tdlinuxcounter SH_CL_STD_FUNC
    keyword whole tdlinuxlogo SH_CL_STD_FUNC
    keyword whole tdmailblacklist SH_CL_STD_FUNC
    keyword whole tdmailbody SH_CL_STD_FUNC
    keyword whole tdmailcopy SH_CL_STD_FUNC
    keyword whole tdmaildirmake SH_CL_STD_FUNC
    keyword whole tdmailsubject SH_CL_STD_FUNC
    keyword whole tdmailwhitelist SH_CL_STD_FUNC
    keyword whole tdnewmsg SH_CL_STD_FUNC
    keyword whole tdsysbackup SH_CL_STD_FUNC
    keyword whole tee SH_CL_STD_FUNC
    keyword whole telinit SH_CL_STD_FUNC
    keyword whole telnet SH_CL_STD_FUNC
    keyword whole test SH_CL_STD_FUNC
    keyword whole tempfile SH_CL_STD_FUNC
    keyword whole tic SH_CL_STD_FUNC
    keyword whole time SH_CL_STD_FUNC
    keyword whole tload SH_CL_STD_FUNC
    keyword whole tnef SH_CL_STD_FUNC
    keyword whole toe SH_CL_STD_FUNC
    keyword whole toolame SH_CL_STD_FUNC
    keyword whole top SH_CL_STD_FUNC
    keyword whole touch SH_CL_STD_FUNC
    keyword whole tput SH_CL_STD_FUNC
    keyword whole tr SH_CL_STD_FUNC
    keyword whole troff SH_CL_STD_FUNC
    keyword whole true SH_CL_STD_FUNC
    keyword whole tset SH_CL_STD_FUNC
    keyword whole tsort SH_CL_STD_FUNC
    keyword whole tty SH_CL_STD_FUNC
    keyword whole tunctl SH_CL_STD_FUNC
    keyword whole tune2fs SH_CL_STD_FUNC
    keyword whole tunelp SH_CL_STD_FUNC
    keyword whole tzconfig SH_CL_STD_FUNC
    keyword whole tzselect SH_CL_STD_FUNC
    keyword whole tzsetup SH_CL_STD_FUNC
    keyword whole ucf SH_CL_STD_FUNC
    keyword whole ul SH_CL_STD_FUNC
    keyword whole umount SH_CL_STD_FUNC
    keyword whole uname SH_CL_STD_FUNC
    keyword whole unarj SH_CL_STD_FUNC
    keyword whole uncompress SH_CL_STD_FUNC
    keyword whole unexpand SH_CL_STD_FUNC
    keyword whole unicode_start SH_CL_STD_FUNC
    keyword whole unicode_stop SH_CL_STD_FUNC
    keyword whole unix_chkpwd SH_CL_STD_FUNC
    keyword whole uniq SH_CL_STD_FUNC
    keyword whole unlink SH_CL_STD_FUNC
    keyword whole unzip SH_CL_STD_FUNC
    keyword whole unzipsfx SH_CL_STD_FUNC
    keyword whole updatedb SH_CL_STD_FUNC
    keyword whole update-menus SH_CL_STD_FUNC
    keyword whole update-modules SH_CL_STD_FUNC
    keyword whole update-pciids SH_CL_STD_FUNC
    keyword whole uprecords SH_CL_STD_FUNC
    keyword whole uptime SH_CL_STD_FUNC
    keyword whole urlview SH_CL_STD_FUNC
    keyword whole usbmodules SH_CL_STD_FUNC
    keyword whole uscan SH_CL_STD_FUNC
    keyword whole useradd SH_CL_STD_FUNC
    keyword whole userconf SH_CL_STD_FUNC
    keyword whole userdel SH_CL_STD_FUNC
    keyword whole usermod SH_CL_STD_FUNC
    keyword whole users SH_CL_STD_FUNC
    keyword whole usleep SH_CL_STD_FUNC
    keyword whole uufilter SH_CL_STD_FUNC
    keyword whole uuidgen SH_CL_STD_FUNC
    keyword whole vacuumdb SH_CL_STD_FUNC
    keyword whole validlocale SH_CL_STD_FUNC
    keyword whole vcstime SH_CL_STD_FUNC
    keyword whole vcut SH_CL_STD_FUNC
    keyword whole vdir SH_CL_STD_FUNC
    keyword whole vi SH_CL_STD_FUNC
    keyword whole vidmode SH_CL_STD_FUNC
    keyword whole view SH_CL_STD_FUNC
    keyword whole vigr SH_CL_STD_FUNC
    keyword whole vim SH_CL_STD_FUNC
    keyword whole vipw SH_CL_STD_FUNC
    keyword whole vlc SH_CL_STD_FUNC
    keyword whole vmstat SH_CL_STD_FUNC
    keyword whole volname SH_CL_STD_FUNC
    keyword whole vorbiscomment SH_CL_STD_FUNC
    keyword whole vt-is-UTF8 SH_CL_STD_FUNC
    keyword whole w SH_CL_STD_FUNC
    keyword whole wall SH_CL_STD_FUNC
    keyword whole watch SH_CL_STD_FUNC
    keyword whole wc SH_CL_STD_FUNC
    keyword whole wget SH_CL_STD_FUNC
    keyword whole whatis SH_CL_STD_FUNC
    keyword whole whereis SH_CL_STD_FUNC
    keyword whole which SH_CL_STD_FUNC
    keyword whole whiptail SH_CL_STD_FUNC
    keyword whole who SH_CL_STD_FUNC
    keyword whole whoami SH_CL_STD_FUNC
    keyword whole whois SH_CL_STD_FUNC
    keyword whole wish SH_CL_STD_FUNC
    keyword whole write SH_CL_STD_FUNC
    keyword whole writevt SH_CL_STD_FUNC
    keyword whole wvWare SH_CL_STD_FUNC
    keyword whole wxvlc SH_CL_STD_FUNC
    keyword whole xargs SH_CL_STD_FUNC
    keyword whole xbmbrowser SH_CL_STD_FUNC
    keyword whole xbindkeys SH_CL_STD_FUNC
    keyword whole xconf SH_CL_STD_FUNC
    keyword whole xdfcopy SH_CL_STD_FUNC
    keyword whole xdfformat SH_CL_STD_FUNC
    keyword whole Xdialog SH_CL_STD_FUNC
    keyword whole xgettext SH_CL_STD_FUNC
    keyword whole xloadimage SH_CL_STD_FUNC
    keyword whole xmessage SH_CL_STD_FUNC
    keyword whole xmodmap SH_CL_STD_FUNC
    keyword whole xmms SH_CL_STD_FUNC
    keyword whole xpmroot SH_CL_STD_FUNC
    keyword whole xrdb SH_CL_STD_FUNC
    keyword whole xset SH_CL_STD_FUNC
    keyword whole xsetbg SH_CL_STD_FUNC
    keyword whole xsetmode SH_CL_STD_FUNC
    keyword whole xsetpointer SH_CL_STD_FUNC
    keyword whole xsetroot SH_CL_STD_FUNC
    keyword whole xterm SH_CL_STD_FUNC
    keyword whole xview SH_CL_STD_FUNC
    keyword whole xwd SH_CL_STD_FUNC
    keyword whole xwud SH_CL_STD_FUNC
    keyword whole xzgv SH_CL_STD_FUNC
    keyword whole yes SH_CL_STD_FUNC
    keyword whole ypdomainname SH_CL_STD_FUNC
    keyword whole yydecode SH_CL_STD_FUNC
    keyword whole zcat SH_CL_STD_FUNC
    keyword whole zcmp SH_CL_STD_FUNC
    keyword whole zdiff SH_CL_STD_FUNC
    keyword whole zdump SH_CL_STD_FUNC
    keyword whole zegrep SH_CL_STD_FUNC
    keyword whole zfgrep SH_CL_STD_FUNC
    keyword whole zforce SH_CL_STD_FUNC
    keyword whole zgrep SH_CL_STD_FUNC
    keyword whole zgv SH_CL_STD_FUNC
    keyword whole zic SH_CL_STD_FUNC
    keyword whole zip SH_CL_STD_FUNC
    keyword whole zipcloak SH_CL_STD_FUNC
    keyword whole zipgrep SH_CL_STD_FUNC
    keyword whole zipinfo SH_CL_STD_FUNC
    keyword whole zipnote SH_CL_STD_FUNC
    keyword whole zipsplit SH_CL_STD_FUNC
    keyword whole zless SH_CL_STD_FUNC
    keyword whole zmore SH_CL_STD_FUNC
    keyword whole znew SH_CL_STD_FUNC
    keyword whole zoo SH_CL_STD_FUNC
    keyword whole zsh SH_CL_STD_FUNC
    keyword whole zsoelim SH_CL_STD_FUNC
    keyword whole zxpdf SH_CL_STD_FUNC

    keyword whole pamcut SH_CL_STD_FUNC
    keyword whole pamdeinterlace SH_CL_STD_FUNC
    keyword whole pamdice SH_CL_STD_FUNC
    keyword whole pamfile SH_CL_STD_FUNC
    keyword whole pamoil SH_CL_STD_FUNC
    keyword whole pamstack SH_CL_STD_FUNC
    keyword whole pamstretch SH_CL_STD_FUNC
    keyword whole pamstretch-gen SH_CL_STD_FUNC

    keyword whole pbmclean SH_CL_STD_FUNC
    keyword whole pbmlife SH_CL_STD_FUNC
    keyword whole pbmmake SH_CL_STD_FUNC
    keyword whole pbmmask SH_CL_STD_FUNC
    keyword whole pbmpage SH_CL_STD_FUNC
    keyword whole pbmpscale SH_CL_STD_FUNC
    keyword whole pbmreduce SH_CL_STD_FUNC
    keyword whole pbmtext SH_CL_STD_FUNC
    keyword whole pbmtextps SH_CL_STD_FUNC
    keyword whole pbmupc SH_CL_STD_FUNC

    keyword whole pbmtoascii SH_CL_STD_FUNC
    keyword whole pbmtoepsi SH_CL_STD_FUNC
    keyword whole pbmtog3 SH_CL_STD_FUNC
    keyword whole pbmtoicon SH_CL_STD_FUNC
    keyword whole pbmtolj SH_CL_STD_FUNC
    keyword whole pbmtomacp SH_CL_STD_FUNC
    keyword whole pbmtonokia SH_CL_STD_FUNC
    keyword whole pbmtopgm SH_CL_STD_FUNC
    keyword whole pbmtoplot SH_CL_STD_FUNC
    keyword whole pbmtoppa SH_CL_STD_FUNC
    keyword whole pbmtopsg3 SH_CL_STD_FUNC
    keyword whole pbmtowbmp SH_CL_STD_FUNC
    keyword whole pbmtoxbm SH_CL_STD_FUNC

    keyword whole g3topbm SH_CL_STD_FUNC
    keyword whole thinkjettopbm SH_CL_STD_FUNC
    keyword whole wbmptopbm SH_CL_STD_FUNC
    keyword whole xbmtopbm SH_CL_STD_FUNC

    keyword whole pgmbentley SH_CL_STD_FUNC
    keyword whole pgmcrater SH_CL_STD_FUNC
    keyword whole pgmedge SH_CL_STD_FUNC
    keyword whole pgmenhance SH_CL_STD_FUNC
    keyword whole pgmhist SH_CL_STD_FUNC
    keyword whole pgmkernel SH_CL_STD_FUNC
    keyword whole pgmnoise SH_CL_STD_FUNC
    keyword whole pgmnorm SH_CL_STD_FUNC
    keyword whole pgmoil SH_CL_STD_FUNC
    keyword whole pgmramp SH_CL_STD_FUNC
    keyword whole pgmslice SH_CL_STD_FUNC
    keyword whole pgmtexture SH_CL_STD_FUNC

    keyword whole pgmtopbm SH_CL_STD_FUNC
    keyword whole pgmtoppm SH_CL_STD_FUNC

    keyword whole asciitopgm SH_CL_STD_FUNC
    keyword whole bioradtopgm SH_CL_STD_FUNC
    keyword whole icontopgm SH_CL_STD_FUNC
    keyword whole jpegtopgm SH_CL_STD_FUNC
    keyword whole macptopgm SH_CL_STD_FUNC
    keyword whole rawtopgm SH_CL_STD_FUNC

    keyword whole pnmalias SH_CL_STD_FUNC
    keyword whole pnmarith SH_CL_STD_FUNC
    keyword whole pnmcat SH_CL_STD_FUNC
    keyword whole pnmcolormap SH_CL_STD_FUNC
    keyword whole pnmcomp SH_CL_STD_FUNC
    keyword whole pnmconvol SH_CL_STD_FUNC
    keyword whole pnmcrop SH_CL_STD_FUNC
    keyword whole pnmcut SH_CL_STD_FUNC
    keyword whole pnmdepth SH_CL_STD_FUNC
    keyword whole pnmenlarge SH_CL_STD_FUNC
    keyword whole pnmfile SH_CL_STD_FUNC
    keyword whole pnmflip SH_CL_STD_FUNC
    keyword whole pnmgamma SH_CL_STD_FUNC
    keyword whole pnmhisteq SH_CL_STD_FUNC
    keyword whole pnmhistmap SH_CL_STD_FUNC
    keyword whole pnmindex SH_CL_STD_FUNC
    keyword whole pnminterp SH_CL_STD_FUNC
    keyword whole pnminterp-gen SH_CL_STD_FUNC
    keyword whole pnminvert SH_CL_STD_FUNC
    keyword whole pnmmargin SH_CL_STD_FUNC
    keyword whole pnmmontage SH_CL_STD_FUNC
    keyword whole pnmnlfilt SH_CL_STD_FUNC
    keyword whole pnmnoraw SH_CL_STD_FUNC
    keyword whole pnmnorm SH_CL_STD_FUNC
    keyword whole pnmpad SH_CL_STD_FUNC
    keyword whole pnmpaste SH_CL_STD_FUNC
    keyword whole pnmpsnr SH_CL_STD_FUNC
    keyword whole pnmquant SH_CL_STD_FUNC
    keyword whole pnmremap SH_CL_STD_FUNC
    keyword whole pnmrotate SH_CL_STD_FUNC
    keyword whole pnmscale SH_CL_STD_FUNC
    keyword whole pnmscalefixed SH_CL_STD_FUNC
    keyword whole pnmshear SH_CL_STD_FUNC
    keyword whole pnmsmooth SH_CL_STD_FUNC
    keyword whole pnmsplit SH_CL_STD_FUNC
    keyword whole pnmtile SH_CL_STD_FUNC

    keyword whole pnmtofits SH_CL_STD_FUNC
    keyword whole pnmtojpeg SH_CL_STD_FUNC
    keyword whole pnmtopalm SH_CL_STD_FUNC
    keyword whole pnmtoplainpnm SH_CL_STD_FUNC
    keyword whole pnmtopng SH_CL_STD_FUNC
    keyword whole pnmtops SH_CL_STD_FUNC
    keyword whole pnmtorle SH_CL_STD_FUNC
    keyword whole pnmtotiff SH_CL_STD_FUNC
    keyword whole pnmtoxwd SH_CL_STD_FUNC

    keyword whole bpmtopnm SH_CL_STD_FUNC
    keyword whole giftopnm SH_CL_STD_FUNC
    keyword whole palmtopnm SH_CL_STD_FUNC
    keyword whole pngtopnm SH_CL_STD_FUNC
    keyword whole pstopnm SH_CL_STD_FUNC
    keyword whole rletopnm SH_CL_STD_FUNC
    keyword whole tifftopnm SH_CL_STD_FUNC
    keyword whole xwdtopnm SH_CL_STD_FUNC

    keyword whole ppm3d SH_CL_STD_FUNC
    keyword whole ppmbrighten SH_CL_STD_FUNC
    keyword whole ppmchange SH_CL_STD_FUNC
    keyword whole ppmcie SH_CL_STD_FUNC
    keyword whole ppmcolormask SH_CL_STD_FUNC
    keyword whole ppmcolors SH_CL_STD_FUNC
    keyword whole ppmdim SH_CL_STD_FUNC
    keyword whole ppmdist SH_CL_STD_FUNC
    keyword whole ppmdither SH_CL_STD_FUNC
    keyword whole ppmfade SH_CL_STD_FUNC
    keyword whole ppmflash SH_CL_STD_FUNC
    keyword whole ppmforge SH_CL_STD_FUNC
    keyword whole ppmhist SH_CL_STD_FUNC
    keyword whole ppmlabel SH_CL_STD_FUNC
    keyword whole ppmmake SH_CL_STD_FUNC
    keyword whole ppmmix SH_CL_STD_FUNC
    keyword whole ppmnorm SH_CL_STD_FUNC
    keyword whole ppmntsc SH_CL_STD_FUNC
    keyword whole ppmpat SH_CL_STD_FUNC
    keyword whole ppmquant SH_CL_STD_FUNC
    keyword whole ppmquantall SH_CL_STD_FUNC
    keyword whole ppmqvgq SH_CL_STD_FUNC
    keyword whole ppmrainbow SH_CL_STD_FUNC
    keyword whole ppmrelief SH_CL_STD_FUNC
    keyword whole ppmshadow SH_CL_STD_FUNC
    keyword whole ppmshift SH_CL_STD_FUNC
    keyword whole ppmspread SH_CL_STD_FUNC
    keyword whole ppmtv SH_CL_STD_FUNC

    keyword whole ppmtoacad SH_CL_STD_FUNC
    keyword whole ppmtobmp SH_CL_STD_FUNC
    keyword whole ppmtogif SH_CL_STD_FUNC
    keyword whole ppmtojpeg SH_CL_STD_FUNC
    keyword whole ppmtolj SH_CL_STD_FUNC
    keyword whole ppmtomap SH_CL_STD_FUNC
    keyword whole ppmtompeg SH_CL_STD_FUNC
    keyword whole ppmtopcx SH_CL_STD_FUNC
    keyword whole ppmtopgm SH_CL_STD_FUNC
    keyword whole ppmtorgb3 SH_CL_STD_FUNC
    keyword whole ppmtowinicon SH_CL_STD_FUNC
    keyword whole ppmtoxpm SH_CL_STD_FUNC

    keyword whole bpmtoppm SH_CL_STD_FUNC
    keyword whole pcxtoppm SH_CL_STD_FUNC
    keyword whole pdftoppm SH_CL_STD_FUNC
    keyword whole pjtoppm SH_CL_STD_FUNC
    keyword whole rawtoppm SH_CL_STD_FUNC
    keyword whole rgb3toppm SH_CL_STD_FUNC
    keyword whole winicontoppm SH_CL_STD_FUNC
    keyword whole xpmtoppm SH_CL_STD_FUNC
    keyword whole xvminitoppm SH_CL_STD_FUNC
]>)dnl
SH_STD_FUNC<[]>dnl
dnl
define(SH_STD_EXTRA, <[
    keyword whole gpg red
    keyword whole md5sum red
    keyword whole openssl red
    keyword whole ssh red
    keyword whole scp red

    keyword whole gettext.sh magenta
    keyword whole TEXTDOMAINDIR magenta
    keyword whole TEXTDOMAIN magenta
    keyword whole VERSION magenta

    keyword whole /dev/audio SH_CL_STD_FILE
    keyword whole /dev/dsp SH_CL_STD_FILE
    keyword whole /dev/null SH_CL_STD_FILE
    keyword whole /dev/mixed SH_CL_STD_FILE
    keyword whole /dev/stdin SH_CL_STD_FILE
    keyword whole /dev/stdout SH_CL_STD_FILE
    keyword whole /dev/stderr SH_CL_STD_FILE
    keyword whole /dev/zero SH_CL_STD_FILE
]>)dnl
SH_STD_EXTRA<[]>dnl

wholechars abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_

context # \n SH_CL_COMMENT
    spellcheck

define(SH_SPEC_VAR_IN_STRING,
<[    keyword \\* SH_CL_CHAR
    keyword \\@ SH_CL_CHAR
    keyword \\$ SH_CL_CHAR
    keyword \\\\ SH_CL_CHAR
    keyword \\` SH_CL_CHAR
    keyword \\" SH_CL_CHAR
    keyword $(*) SH_CL_SYS_COMMAND
    keyword ${*} SH_CL_EXPRESSION
    keyword `*` SH_CL_SYS_COMMAND
SH_SPEC_VAR<[]>dnl
]>)dnl
dnl
context exclusive whole <<\[\s\]\[-\]\[\s\]\[\\\]EOF EOF SH_CL_STRING
SH_SPEC_VAR_IN_STRING
context exclusive whole <<\[\s\]\[-\]\[\s\]\[\\\]END END SH_CL_STRING
SH_SPEC_VAR_IN_STRING
dnl
context ' ' SH_CL_STRING
context " " SH_CL_STRING
SH_STD_VAR
SH_SPEC_VAR_IN_STRING<[]>dnl
dnl
context exclusive ` ` SH_CL_SYS_COMMAND
    keyword '*' SH_CL_STRING
    keyword "*" SH_CL_STRING
    keyword \\` SH_CL_STRING
    keyword ; SH_CL_SEPARATOR_2
    keyword $(*) SH_CL_EXPRESSION
    keyword ${*} SH_CL_EXPRESSION
    keyword { SH_CL_SEPARATOR_2
    keyword } SH_CL_SEPARATOR_2

SH_STD_VAR
SH_STD_REDIRECTION
SH_SPEC_VAR<[]>dnl
SH_STD_FUNC<[]>dnl
SH_STD_EXTRA<[]>dnl

context exclusive $( ) SH_CL_SYS_COMMAND
    keyword '*' SH_CL_STRING
    keyword "*" SH_CL_STRING
    keyword `*` SH_CL_EXPRESSION
    keyword ; SH_CL_SEPARATOR_2
    keyword ${*} SH_CL_EXPRESSION
    keyword { SH_CL_SEPARATOR_2
    keyword } SH_CL_SEPARATOR_2

SH_STD_VAR
SH_STD_REDIRECTION
SH_SPEC_VAR<[]>dnl
SH_STD_FUNC<[]>dnl
SH_STD_EXTRA<[]>dnl
