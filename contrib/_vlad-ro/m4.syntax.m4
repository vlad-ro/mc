include(common.m4)dnl
divert(-1)
define(M4_CL_DEFAULT,		CL_DEFAULT)
define(M4_CL_KEYWORD,		CL_KEYWORD)
define(M4_CL_STRING,		CL_STRING)
define(M4_CL_COMMENT,		CL_COMMENT)
define(M4_CL_TODO,			CL_TODO)
define(M4_CL_CHAR,			brightcyan)
define(M4_CL_MACRO,			CL_ALT_KEYWORD)
define(M4_CL_VARIABLE,		brightred)

ifelse(COLOR_SCHEME, <[bright]>, <[
# Bright color scheme
define(M4_CL_SYMBOL,		CL_SYMBOL)
]>, <[
# Default color scheme
define(M4_CL_SYMBOL,		M4_CL_CHAR)
]>)

divert<[]>dnl
#
# M4 Macroprocessor/Autoconf syntax highlighting
# for MC Editor/CoolEdit
#
# Author: Vlad Romanenko <VladRomanenko@ukr.net>
#
# 2002-09-19  Vlad Romanenko <VladRomanenko@ukr.net>
#    * Initial public release.
#

context default<[]>M4_CL_DEFAULT

    #=========================
    # Built-in macros with mandatory parameters
    keyword whole builtin M4_CL_KEYWORD
    keyword whole decr M4_CL_KEYWORD
    keyword whole define M4_CL_KEYWORD
    keyword whole defn M4_CL_KEYWORD
    keyword whole esyscmd M4_CL_KEYWORD
    keyword whole eval M4_CL_KEYWORD
    keyword whole format M4_CL_KEYWORD
    keyword whole ifdef M4_CL_KEYWORD
    keyword whole ifelse M4_CL_KEYWORD
    keyword whole include M4_CL_KEYWORD
    keyword whole incr M4_CL_KEYWORD
    keyword whole index M4_CL_KEYWORD
    keyword whole len M4_CL_KEYWORD
    keyword whole maketemp M4_CL_KEYWORD
    keyword whole patsubst M4_CL_KEYWORD
    keyword whole popdef M4_CL_KEYWORD
    keyword whole pushdef M4_CL_KEYWORD
    keyword whole regexp M4_CL_KEYWORD
    keyword whole sinclude M4_CL_KEYWORD
    keyword whole substr M4_CL_KEYWORD
    keyword whole syscmd M4_CL_KEYWORD
    keyword whole translit M4_CL_KEYWORD
    keyword whole undefine M4_CL_KEYWORD

    #=========================
    # Built-in macros with optional parameters
changequote(`, ')dnl
    keyword whole `changecom' M4_CL_KEYWORD
    keyword whole `changequote' M4_CL_KEYWORD
    keyword whole `debugfile' M4_CL_KEYWORD
    keyword whole `debugmode' M4_CL_KEYWORD
    keyword whole `divert' M4_CL_KEYWORD
    keyword whole `divnum' M4_CL_KEYWORD
    keyword whole `dumpdef' M4_CL_KEYWORD
    keyword whole `errprint' M4_CL_KEYWORD
    keyword whole `indir' M4_CL_KEYWORD
    keyword whole `m4exit' M4_CL_KEYWORD
    keyword whole `m4wrap' M4_CL_KEYWORD
    keyword whole `shift' M4_CL_KEYWORD
    keyword whole `sysval' M4_CL_KEYWORD
    keyword whole `traceoff' M4_CL_KEYWORD
    keyword whole `traceon' M4_CL_KEYWORD
    keyword whole `undivert' M4_CL_KEYWORD

    #=========================
    # Autoconf and Automake macros
    keyword whole AC_\[ABCDEFGHIJKLMNOPQRSTUVWXYZ_\] M4_CL_MACRO
    keyword whole AS_\[ABCDEFGHIJKLMNOPQRSTUVWXYZ_\] M4_CL_MACRO
    keyword whole AM_\[ABCDEFGHIJKLMNOPQRSTUVWXYZ_\] M4_CL_MACRO

    #=========================
    # Variables
    keyword whole `__file__' M4_CL_VARIABLE
    keyword whole `__gnu__' M4_CL_VARIABLE
    keyword whole `__line__' M4_CL_VARIABLE
    keyword whole `__unix__' M4_CL_VARIABLE
    keyword wholeright $\{0123456789\}\[0123456789\] M4_CL_VARIABLE
    keyword wholeright $\{@\*#\} M4_CL_VARIABLE

    #=========================
    # Special symbols
changequote(<[, ]>)dnl
    keyword ` M4_CL_CHAR
    keyword ' M4_CL_CHAR
    keyword [ M4_CL_CHAR
    keyword ] M4_CL_CHAR
    keyword , M4_CL_SYMBOL
    keyword ( M4_CL_SYMBOL
    keyword ) M4_CL_SYMBOL


#=============================
# Comments

context # \n M4_CL_COMMENT
    spellcheck
SYNTAX_TODO(M4_CL_TODO)

context <[dnl]> \n M4_CL_COMMENT
    spellcheck
SYNTAX_TODO(M4_CL_TODO)