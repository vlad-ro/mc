include(common.m4)dnl
divert(-1)
ifelse(COLOR_SCHEME, <[bright]>, <[
# Bright color scheme
define(JS_SPECIAL_SYMBOL, white)
]>, <[
# Default color scheme
define(JS_SPECIAL_SYMBOL, brightcyan)
]>)
divert<[]>dnl
#
# JavaScript syntax highlighting
# Author: Vlad Romanenko <VladRomanenko@ukr.net>
# Based on c.syntax
#

context default<[]>CL_DEFAULT

    #=========================
    # Keywords
    keyword whole arguments CL_KEYWORD
    keyword whole break CL_KEYWORD
    keyword whole caller CL_KEYWORD
    keyword whole case CL_KEYWORD
    keyword whole catch CL_KEYWORD
    keyword whole class CL_KEYWORD
    keyword whole const CL_KEYWORD
    keyword whole constructor CL_KEYWORD
    keyword whole continue CL_KEYWORD
    keyword whole else CL_KEYWORD
    keyword whole extends CL_KEYWORD
    keyword whole export CL_KEYWORD
    keyword whole default CL_KEYWORD
    keyword whole delete CL_KEYWORD
    keyword whole for CL_KEYWORD
    keyword whole function CL_KEYWORD
    keyword whole if CL_KEYWORD
    keyword whole import CL_KEYWORD
    keyword whole in CL_KEYWORD
    keyword whole instanceof CL_KEYWORD
    keyword whole let CL_KEYWORD
    keyword whole new CL_KEYWORD
    keyword whole of CL_KEYWORD
    keyword whole prototype CL_KEYWORD
    keyword whole return CL_KEYWORD
    keyword whole switch CL_KEYWORD
    keyword whole this CL_KEYWORD
    keyword whole throw CL_KEYWORD
    keyword whole try CL_KEYWORD
    keyword whole typeof CL_KEYWORD
    keyword whole var CL_KEYWORD
    keyword whole while CL_KEYWORD
    keyword whole with CL_KEYWORD
    keyword whole yield CL_KEYWORD

    #=========================
    # Objects
    keyword whole ActiveXObject CL_KEYWORD
    keyword whole Array CL_KEYWORD
    keyword whole Boolean CL_KEYWORD
    keyword whole Date CL_KEYWORD
    keyword whole Dictionary CL_KEYWORD
    keyword whole Enumerator CL_KEYWORD
    keyword whole FileSystemObject CL_KEYWORD
    keyword whole Function CL_KEYWORD
    keyword whole Global CL_KEYWORD
    keyword whole Image CL_KEYWORD
    keyword whole Math CL_KEYWORD
    keyword whole Map CL_KEYWORD
    keyword whole Number CL_KEYWORD
    keyword whole Object CL_KEYWORD
    keyword whole Promise CL_KEYWORD
    keyword whole Proxy CL_KEYWORD
    keyword whole Reflect CL_KEYWORD
    keyword whole Set CL_KEYWORD
    keyword whole Symbol CL_KEYWORD
    keyword whole TextStream CL_KEYWORD
    keyword whole RegExp CL_KEYWORD
    keyword whole VBArray CL_KEYWORD
    keyword whole WeakMap CL_KEYWORD
    keyword whole WeakSet CL_KEYWORD

    #=========================
    # Most common functions
    keyword whole alert CL_KEYWORD
    keyword whole escape CL_KEYWORD
    keyword whole eval CL_KEYWORD
    keyword whole indexOf CL_KEYWORD
    keyword whole isNaN CL_KEYWORD
    keyword whole toString CL_KEYWORD
    keyword whole unescape CL_KEYWORD
    keyword whole valueOf CL_KEYWORD

    #=========================
    # Constants
    keyword whole false brightgreen
    keyword whole null brightgreen
    keyword whole true brightgreen
    keyword whole undefined CL_KEYWORD

    #=========================
    # Comments
    keyword /\* CL_COMMENT
    keyword \*/ CL_COMMENT
    keyword // CL_COMMENT

    #=========================
    # Numbers
    wholechars abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.

    keyword whole 0\{xX\}\{0123456789abcdefABCDEF\}\[0123456789abcdefABCDEF\] brightgreen
    keyword whole \{0123456789\}\[0123456789\] brightgreen
    keyword whole \[0123456789\]\.\{0123456789\}\[0123456789\] brightgreen
    keyword whole \{0123456789\}\[0123456789\]\.\[0123456789\] brightgreen
    keyword whole \{0123456789\}\[0123456789\]\{eE\}\{0123456789\}\[0123456789\] brightgreen
    keyword whole \{0123456789\}\[0123456789\]\{eE\}\{\-\+\}\{0123456789\}\[0123456789\] brightgreen
    keyword whole \{0123456789\}\[0123456789\]\.\{0123456789\}\[0123456789\]\{eE\}\{0123456789\}\[0123456789\] brightgreen
    keyword whole \{0123456789\}\[0123456789\]\.\{0123456789\}\[0123456789\]\{eE\}\{\-\+\}\{0123456789\}\[0123456789\] brightgreen

    #=========================
    # Special symbols
    keyword => JS_SPECIAL_SYMBOL
    keyword \. CL_SYMBOL
    keyword \* CL_SYMBOL
    keyword \+ CL_SYMBOL
    keyword - CL_SYMBOL
    keyword / CL_SYMBOL
    keyword % CL_SYMBOL
    keyword = CL_SYMBOL
    keyword ! CL_SYMBOL
    keyword & CL_SYMBOL
    keyword | CL_SYMBOL
    keyword ^ CL_SYMBOL
    keyword ~ CL_SYMBOL
    keyword > CL_SYMBOL
    keyword < CL_SYMBOL

    #=========================
    # Separators
    keyword { JS_SPECIAL_SYMBOL
    keyword } JS_SPECIAL_SYMBOL
    keyword ( JS_SPECIAL_SYMBOL
    keyword ) JS_SPECIAL_SYMBOL
    keyword [ JS_SPECIAL_SYMBOL
    keyword ] JS_SPECIAL_SYMBOL
    keyword , JS_SPECIAL_SYMBOL
    keyword ? JS_SPECIAL_SYMBOL
    keyword : JS_SPECIAL_SYMBOL
    keyword ; brightmagenta


#=============================
# Comments

context exclusive /\* \*/ CL_COMMENT
    spellcheck
    keyword whole BUG brightred
    keyword whole FixMe brightred
    keyword whole FIXME brightred
    keyword whole Note brightred
    keyword whole NOTE brightred
    keyword whole ToDo brightred
    keyword whole TODO brightred
    keyword !!\[!\] brightred
    keyword ??\[?\] brightred


context exclusive // \n CL_COMMENT
    spellcheck
    keyword whole BUG brightred
    keyword whole FixMe brightred
    keyword whole FIXME brightred
    keyword whole Note brightred
    keyword whole NOTE brightred
    keyword whole ToDo brightred
    keyword whole TODO brightred
    keyword !!\[!\] brightred
    keyword ??\[?\] brightred


#=============================
# Strings

context " " CL_STRING
    spellcheck
    keyword \\\{\\'"abtnvfr\} brightgreen
    keyword \\\{0123\}\{01234567\}\{01234567\} brightgreen

    keyword ' brightgreen

context ' ' CL_STRING
    spellcheck
    keyword \\\{\\'"abtnvfr\} brightgreen
    keyword \\\{0123\}\{01234567\}\{01234567\} brightgreen

    keyword " brightgreen

context ` ` CL_STRING
    spellcheck
    keyword \\\{\\'"abtnvfr\} brightgreen
    keyword \\\{0123\}\{01234567\}\{01234567\} brightgreen
    keyword ${*} yellow

#=============================
# Regular expressions

context exclusive / / CL_STRING
    keyword \\\\ brightgreen
    keyword \\\? brightgreen
    keyword \\\[/sSw\+\$\!\] brightgreen
    keyword (?: CL_SYMBOL
    keyword ( CL_SYMBOL
    keyword ) CL_SYMBOL
    keyword [ CL_SYMBOL
    keyword ] CL_SYMBOL
    keyword { CL_SYMBOL
    keyword } CL_SYMBOL
    keyword \. CL_SYMBOL
    keyword \* CL_SYMBOL
    keyword \+ CL_SYMBOL
    keyword ? CL_SYMBOL
    keyword | CL_SYMBOL
