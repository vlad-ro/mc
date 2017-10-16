divert(-1)
ifelse(COLOR_SCHEME, `bright', `
# Bright color scheme
define(CL_DEFAULT, 			` yellow')
define(CL_KEYWORD,			white)
define(CL_SYMBOL,			white)
define(CL_CHAR,				brightgreen)
define(CL_STRING,			brightcyan)
define(CL_COMMENT,			lightgray)
define(CL_TODO,				brightred)
define(CL_SEPARATOR,		CL_KEYWORD)
define(CL_TERMINATOR,		brightmagenta)
define(CL_NUMBER,			brightgreen)
define(CL_CONSTANT,			brightgreen)
define(CL_ALT_KEYWORD,		brightmagenta)
define(CL_SCRIPT_FIRSTLINE,	brightcyan black)
define(CL_SYS_COMMAND,		white black)
', COLOR_SCHEME, `dark', `
# Black background color scheme
define(CL_DEFAULT, 			` white black')
define(CL_KEYWORD,			brightred)
define(CL_SYMBOL,			yellow)
define(CL_CHAR,				brightgreen)
define(CL_STRING,			brightcyan)
define(CL_COMMENT,			brown)
define(CL_TODO,				brightred)
define(CL_SEPARATOR,		yellow)
define(CL_TERMINATOR,		brightmagenta)
define(CL_NUMBER,			brightgreen)
define(CL_CONSTANT,			brightgreen)
define(CL_ALT_KEYWORD,		brightmagenta)
define(CL_SCRIPT_FIRSTLINE,	brightcyan black)
define(CL_SYS_COMMAND,		white black)
', `
# Default color scheme
define(CL_DEFAULT,			`')
define(CL_KEYWORD,			yellow)
define(CL_SYMBOL,			yellow)
define(CL_CHAR,				brightgreen)
define(CL_STRING,			green)
define(CL_COMMENT,			brown)
define(CL_TODO,				brightred)
define(CL_SEPARATOR,		brightcyan)
define(CL_TERMINATOR,		brightmagenta)
define(CL_NUMBER,			cyan)
define(CL_CONSTANT,			brightgreen)
define(CL_ALT_KEYWORD,		cyan)
define(CL_SCRIPT_FIRSTLINE,	brightcyan black)
define(CL_SYS_COMMAND,		white black)
')

# ?? Maybe highlite {{{ and }}}
# ?? Also can highlite URLs and emails in comments
define(SYNTAX_TODO,
`    keyword whole BUG $1
    keyword whole FixMe $1
    keyword whole FIXME $1
    keyword whole Note $1
    keyword whole NOTE $1
    keyword whole ToDo $1
    keyword whole TODO $1
    keyword whole Warning $1
    keyword whole WARNING $1
    keyword !!\[!\] $1
    keyword ??\[?\] $1
')dnl

# Disable some m4 built-ins that can be used in syntax files
undefine(`eval')
undefine(`include')
undefine(`shift')
undefine(`format')

# Set default quotes to avoid conflicts
changequote(<[, ]>)

# Disable comments to avoid conflicts
changecom()

divert<[]>dnl
