divert(-1)
# Default color scheme
#define(CL_DEFAULT,			lightgray)
#define(CL_KEYWORD,			yellow)
#define(CL_SYMBOL,			yellow)
#define(CL_CHAR,				brightgreen)
#define(CL_STRING,			green)
#define(CL_COMMENT,			brown)
#define(CL_TODO,				brightred)
#define(CL_SEPARATOR,		brightcyan)
#define(CL_TERMINATOR,		brightmagenta)
#define(CL_NUMBER,			cyan)
#define(CL_CONSTANT,			brightgreen)
#define(CL_ALT_KEYWORD,		cyan)
#define(CL_SCRIPT_FIRSTLINE,	brightcyan	black)
#define(CL_SYS_COMMAND,		white		black)

# Bright color scheme
define(CL_DEFAULT, 			yellow)
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
define(CL_SCRIPT_FIRSTLINE,	brightcyan	black)
define(CL_SYS_COMMAND,		white		black)

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
