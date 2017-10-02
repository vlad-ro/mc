divert(-1)
# ----------------------------
# Declare shared definitions

define(TOKEN_NUMBER, `\{0123456789\}\[0123456789\]')dnl

define(SYNTAX_C_NUMBER,
`    wholechars abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.

    keyword whole 0\{xX\}\{0123456789abcdefABCDEF\}\[0123456789abcdefABCDEF\]    $1
    keyword whole TOKEN_NUMBER    $1
    keyword whole \[0123456789\]\.TOKEN_NUMBER    $1
    keyword whole TOKEN_NUMBER\.\[0123456789\]    $1
    keyword whole TOKEN_NUMBER\{eE\}TOKEN_NUMBER    $1
    keyword whole TOKEN_NUMBER\{eE\}\{\-\+\}TOKEN_NUMBER    $1
    keyword whole TOKEN_NUMBER\.TOKEN_NUMBER\{eE\}TOKEN_NUMBER    $1
    keyword whole TOKEN_NUMBER\.TOKEN_NUMBER\{eE\}\{\-\+\}TOKEN_NUMBER    $1
')dnl

divert`'dnl
include(common.m4)dnl
divert(-1)

ifelse(COLOR_SCHEME, <[bright]>, <[
# Bright color scheme
define(C_CL_PREPROCESSOR,	brightmagenta)
define(C_CL_PREPR_KEYWORD,	brightred)
define(C_CL_PREPR_STRING,	CL_STRING)
]>, <[
# Default color scheme
define(C_CL_PREPROCESSOR,	brightred)
define(C_CL_PREPR_KEYWORD,	brightred)
define(C_CL_PREPR_STRING,	red)
]>)
define(C_CL_DEFAULT,		CL_DEFAULT)
define(C_CL_KEYWORD,		CL_KEYWORD)
define(C_CL_SYMBOL,			CL_SYMBOL)
define(C_CL_CHAR,			CL_CHAR)
define(C_CL_STRING,			CL_STRING)
define(C_CL_COMMENT,		CL_COMMENT)
define(C_CL_TODO,			CL_TODO)
define(C_CL_SEPARATOR,		CL_SEPARATOR)
define(C_CL_TERMINATOR,		CL_TERMINATOR)
define(C_CL_NUMBER,			CL_NUMBER)
define(C_CL_CONSTANT,		CL_CONSTANT)
define(C_CL_BITWISE_OP,		brightmagenta)

divert<[]>dnl
# Syntax rules for the C and the C++ programming languages

context default<[]>C_CL_DEFAULT

    #=========================
    # Keywords
    keyword whole auto C_CL_KEYWORD
    keyword whole break C_CL_KEYWORD
    keyword whole case C_CL_KEYWORD
    keyword whole char C_CL_KEYWORD
    keyword whole const C_CL_KEYWORD
    keyword whole continue C_CL_KEYWORD
    keyword whole do C_CL_KEYWORD
    keyword whole double C_CL_KEYWORD
    keyword whole else C_CL_KEYWORD
    keyword whole enum C_CL_KEYWORD
    keyword whole extern C_CL_KEYWORD
    keyword whole float C_CL_KEYWORD
    keyword whole for C_CL_KEYWORD
    keyword whole goto C_CL_KEYWORD
    keyword whole if C_CL_KEYWORD
    keyword whole int C_CL_KEYWORD
    keyword whole long C_CL_KEYWORD
    keyword whole register C_CL_KEYWORD
    keyword whole return C_CL_KEYWORD
    keyword whole short C_CL_KEYWORD
    keyword whole signed C_CL_KEYWORD
    keyword whole sizeof C_CL_KEYWORD
    keyword whole static C_CL_KEYWORD
    keyword whole struct C_CL_KEYWORD
    keyword whole switch C_CL_KEYWORD
    keyword whole typedef C_CL_KEYWORD
    keyword whole union C_CL_KEYWORD
    keyword whole unsigned C_CL_KEYWORD
    keyword whole void C_CL_KEYWORD
    keyword whole volatile C_CL_KEYWORD
    keyword whole while C_CL_KEYWORD
    keyword whole asm C_CL_KEYWORD
    keyword whole inline C_CL_KEYWORD
    keyword whole wchar_t C_CL_KEYWORD
    keyword whole ... C_CL_KEYWORD
    keyword whole linestart \{\s\t\}\[\s\t\]#*\n brightmagenta
    keyword whole \[\s\t\]default C_CL_KEYWORD
    # Label
    keyword whole linestart \[\s\t\]\{ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz\}\[0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz\]: cyan

    #=========================
    # Constants
    keyword whole NULL C_CL_CONSTANT

    #=========================
    # Comments
    keyword /\* C_CL_COMMENT
    keyword \*/ C_CL_COMMENT
    keyword // C_CL_COMMENT

    #=========================
    # Numbers
SYNTAX_C_NUMBER(C_CL_NUMBER)dnl

    #=========================
    # Single character
define(C_CHARACTER,
<[    keyword '\\\{"abtnvfr\}' C_CL_CHAR
    keyword '\\\{0123\}\{01234567\}\{01234567\}' C_CL_CHAR
    keyword '\\'' C_CL_CHAR
    keyword '\\\\' C_CL_CHAR
    keyword '\\0' C_CL_CHAR
    keyword '\{\s!"#$%&()\*\+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ\}' C_CL_CHAR
]>)dnl
C_CHARACTER

# punctuation characters, sorted by ASCII code
define(C_SPEC_SYMBOLS,
<[    keyword ! C_CL_SYMBOL
    keyword % C_CL_SYMBOL
    keyword && C_CL_SYMBOL
    keyword & C_CL_BITWISE_OP
    keyword ( C_CL_SEPARATOR
    keyword ) C_CL_SEPARATOR
    keyword \* C_CL_SYMBOL
    keyword \+ C_CL_SYMBOL
    keyword , C_CL_SEPARATOR
    keyword - C_CL_SYMBOL
    keyword / C_CL_SYMBOL
    keyword : C_CL_SEPARATOR
    keyword ; C_CL_TERMINATOR
    keyword < C_CL_SYMBOL
    keyword = C_CL_SYMBOL
    keyword > C_CL_SYMBOL
    keyword ? C_CL_SEPARATOR
    keyword [ C_CL_SEPARATOR
    keyword ] C_CL_SEPARATOR
    keyword ^ C_CL_BITWISE_OP
    keyword { C_CL_SEPARATOR
    keyword || C_CL_SYMBOL
    keyword | C_CL_BITWISE_OP
    keyword } C_CL_SEPARATOR
    keyword ~ C_CL_BITWISE_OP
    #keyword . C_CL_SYMBOL
]>)dnl
C_SPEC_SYMBOLS

#=============================
# Comments
context exclusive /\* \*/ C_CL_COMMENT
    spellcheck
SYNTAX_TODO(C_CL_TODO)

context exclusive // \n C_CL_COMMENT
    spellcheck
SYNTAX_TODO(C_CL_TODO)

#=============================
# Preprocessor directives
context linestart # \n C_CL_PREPROCESSOR
    keyword \\\n yellow
    keyword \\\r\n yellow

    #=========================
    # Preprocessor reserved words
    keyword whole defined C_CL_PREPR_KEYWORD
    keyword whole define C_CL_PREPR_KEYWORD
    keyword whole elif C_CL_PREPR_KEYWORD
    keyword whole else C_CL_PREPR_KEYWORD
    keyword whole endif C_CL_PREPR_KEYWORD
    keyword whole error C_CL_PREPR_KEYWORD
    keyword whole ifdef C_CL_PREPR_KEYWORD
    keyword whole ifndef C_CL_PREPR_KEYWORD
    keyword whole if C_CL_PREPR_KEYWORD
    keyword whole include C_CL_PREPR_KEYWORD
    keyword whole line C_CL_PREPR_KEYWORD
    keyword whole pragma C_CL_PREPR_KEYWORD
    keyword whole undef C_CL_PREPR_KEYWORD

    #=========================
    # Comments
    keyword /\**\*/ C_CL_COMMENT
    keyword //*\n C_CL_COMMENT

    #=========================
    # Strings and chars
    keyword "+" C_CL_PREPR_STRING
    keyword <+> C_CL_PREPR_STRING
C_CHARACTER

    #=========================
    # Numbers
SYNTAX_C_NUMBER(C_CL_NUMBER)

    #=========================
    # Symbols
C_SPEC_SYMBOLS
    keyword ( C_CL_SEPARATOR
    keyword ) C_CL_SEPARATOR
    keyword , C_CL_SEPARATOR


context " " C_CL_STRING
    spellcheck
    keyword \\" C_CL_CHAR
    keyword %% C_CL_CHAR
    keyword %\[#0\s-\+,\]\[0123456789\*\]\[.\]\[0123456789\*\]\[L\]\{eEfgGoxX\} C_CL_CHAR
    keyword %\[0\s-\+,\]\[0123456789\*\]\[.\]\[0123456789\*\]\[hl\]\{diuxX\} C_CL_CHAR
    keyword %\[hl\]n C_CL_CHAR
    keyword %\[-\]\[0123456789\*\]\[.\]\[0123456789\*\]s C_CL_CHAR
    keyword %[*] C_CL_CHAR
    keyword %c C_CL_CHAR
    keyword %p C_CL_CHAR
    keyword \\\{0123\}\{01234567\}\{01234567\} C_CL_CHAR
    keyword \\\\ C_CL_CHAR
    keyword \\' C_CL_CHAR
    keyword \\\{abtnvfr\} C_CL_CHAR
