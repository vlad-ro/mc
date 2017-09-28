include(common.m4)dnl
divert(-1)

ifelse(COLOR_SCHEME, <[bright]>, <[
# Bright color scheme
define(C_CL_PREPR_KEYWORD,      brightred)
define(C_CL_PREPROCESSOR,       brightmagenta)
]>, <[
# Default color scheme
define(C_CL_PREPR_KEYWORD,      brightred)
define(C_CL_PREPROCESSOR,       brightred)
]>)

divert<[]>dnl
context default<[]>CL_DEFAULT
    keyword whole auto CL_KEYWORD
    keyword whole break CL_KEYWORD
    keyword whole case CL_KEYWORD
    keyword whole char CL_KEYWORD
    keyword whole const CL_KEYWORD
    keyword whole continue CL_KEYWORD
    keyword whole default CL_KEYWORD
    keyword whole do CL_KEYWORD
    keyword whole double CL_KEYWORD
    keyword whole else CL_KEYWORD
    keyword whole enum CL_KEYWORD
    keyword whole extern CL_KEYWORD
    keyword whole float CL_KEYWORD
    keyword whole for CL_KEYWORD
    keyword whole goto CL_KEYWORD
    keyword whole if CL_KEYWORD
    keyword whole int CL_KEYWORD
    keyword whole long CL_KEYWORD
    keyword whole register CL_KEYWORD
    keyword whole return CL_KEYWORD
    keyword whole short CL_KEYWORD
    keyword whole signed CL_KEYWORD
    keyword whole sizeof CL_KEYWORD
    keyword whole static CL_KEYWORD
    keyword whole struct CL_KEYWORD
    keyword whole switch CL_KEYWORD
    keyword whole typedef CL_KEYWORD
    keyword whole union CL_KEYWORD
    keyword whole unsigned CL_KEYWORD
    keyword whole void CL_KEYWORD
    keyword whole volatile CL_KEYWORD
    keyword whole while CL_KEYWORD
    keyword whole asm CL_KEYWORD
    keyword whole catch CL_KEYWORD
    keyword whole class CL_KEYWORD
    keyword whole friend CL_KEYWORD
    keyword whole delete CL_KEYWORD
    keyword whole inline CL_KEYWORD
    keyword whole new CL_KEYWORD
    keyword whole operator CL_KEYWORD
    keyword whole private CL_KEYWORD
    keyword whole protected CL_KEYWORD
    keyword whole public CL_KEYWORD
    keyword whole this CL_KEYWORD
    keyword whole throw CL_KEYWORD
    keyword whole template CL_KEYWORD
    keyword whole try CL_KEYWORD
    keyword whole virtual CL_KEYWORD
    keyword whole bool CL_KEYWORD
    keyword whole const_cast CL_KEYWORD
    keyword whole dynamic_cast CL_KEYWORD
    keyword whole explicit CL_KEYWORD
    keyword whole false CL_KEYWORD
    keyword whole mutable CL_KEYWORD
    keyword whole namespace CL_KEYWORD
    keyword whole reinterpret_cast CL_KEYWORD
    keyword whole static_cast CL_KEYWORD
    keyword whole true CL_KEYWORD
    keyword whole typeid CL_KEYWORD
    keyword whole typename CL_KEYWORD
    keyword whole using CL_KEYWORD
    keyword whole wchar_t CL_KEYWORD
    keyword whole ... CL_KEYWORD
    keyword whole linestart \{\s\t\}\[\s\t\]#*\n brightmagenta

    keyword /\* CL_COMMENT
    keyword \*/ CL_COMMENT
    keyword // CL_COMMENT

    keyword '\\\{"abtnvfr\}' CL_CHAR
    keyword '\\\{0123\}\{01234567\}\{01234567\}' CL_CHAR
    keyword '\\'' CL_CHAR
    keyword '\\\\' CL_CHAR
    keyword '\\0' CL_CHAR
    keyword '\{\s!"#$%&()\*\+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ\}' CL_CHAR

    keyword > CL_SYMBOL
    keyword < CL_SYMBOL
    keyword \+ CL_SYMBOL
    keyword - CL_SYMBOL
    keyword \* CL_SYMBOL
    keyword / CL_SYMBOL
    keyword % CL_SYMBOL
    keyword = CL_SYMBOL
    keyword != CL_SYMBOL
    keyword == CL_SYMBOL
    keyword { CL_SEPARATOR
    keyword } CL_SEPARATOR
    keyword ( CL_SEPARATOR
    keyword ) CL_SEPARATOR
    keyword [ CL_SEPARATOR
    keyword ] CL_SEPARATOR
    keyword , CL_SEPARATOR
    keyword : CL_SEPARATOR
    keyword ? CL_SEPARATOR
    keyword ; CL_TERMINATOR

context exclusive /\* \*/ CL_COMMENT
    spellcheck

context exclusive // \n CL_COMMENT
    spellcheck

context linestart # \n C_CL_PREPROCESSOR
    keyword \\\n yellow
    keyword /\**\*/ CL_COMMENT
    keyword //*\n CL_COMMENT
    keyword "+" red
    keyword <+> red

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

context " " CL_STRING
    spellcheck
    keyword \\" CL_CHAR
    keyword %% CL_CHAR
    keyword %\[#0\s-\+,\]\[0123456789\*\]\[.\]\[0123456789\*\]\[L\]\{eEfgGoxX\} CL_CHAR
    keyword %\[0\s-\+,\]\[0123456789\*\]\[.\]\[0123456789\*\]\[hl\]\{diuxX\} CL_CHAR
    keyword %\[hl\]n CL_CHAR
    keyword %\[-\]\[0123456789\*\]\[.\]\[0123456789\*\]s CL_CHAR
    keyword %[*] CL_CHAR
    keyword %c CL_CHAR
    keyword %p CL_CHAR
    keyword \\\{0123\}\{01234567\}\{01234567\} CL_CHAR
    keyword \\\\ CL_CHAR
    keyword \\' CL_CHAR
    keyword \\\{abtnvfr\} CL_CHAR
