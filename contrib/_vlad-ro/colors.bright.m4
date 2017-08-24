define(FG_DEFAULT, yellow)
define(BG_DEFAULT, `')
define(CL_DEFAULT, FG_DEFAULT BG_DEFAULT)

define(CL_KEYWORD,			white			BG_DEFAULT)
define(CL_SYMBOL,			white			BG_DEFAULT)
define(CL_CHAR,				brightgreen		BG_DEFAULT)
define(CL_STRING,			brightcyan		BG_DEFAULT)
define(CL_COMMENT,			lightgray		BG_DEFAULT)
define(CL_TODO,				brightred		BG_DEFAULT)
define(CL_SEPARATOR,		CL_KEYWORD)
define(CL_TERMINATOR,		brightmagenta	BG_DEFAULT)
define(CL_NUMBER,			brightgreen		BG_DEFAULT)
define(CL_CONSTANT,			brightgreen		BG_DEFAULT)

define(CL_ALT_KEYWORD,		brightmagenta	BG_DEFAULT)

define(CL_SCRIPT_FIRSTLINE,	brightcyan		black)
define(CL_SYS_COMMAND,		white			black)
