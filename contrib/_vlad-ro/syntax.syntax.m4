include(common.m4)dnl
# Syntax highlighting rules for syntax highlighting rules

# Use \[\] at the end of keywords to suppress their special meaning

wholechars abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.\\[]{}

context default<[]>CL_DEFAULT
# Invalid combinations, not highlighted
    keyword whole linestart\[\t\s\]whole
    keyword whole linestart\[\t\s\]wholeleft
    keyword whole linestart\[\t\s\]wholeright

# Combinations below are valid
    keyword whole whole\[\t\s\]linestart brightcyan
    keyword whole wholeleft\[\t\s\]linestart brightcyan
    keyword whole wholeright\[\t\s\]linestart brightcyan
    keyword whole whole\[\] brightcyan
    keyword whole wholeleft\[\] brightcyan
    keyword whole wholeright\[\] brightcyan
    keyword whole linestart\[\] brightcyan

    keyword whole wholechars\[\t\s\]left brightcyan
    keyword whole wholechars\[\t\s\]right brightcyan
    keyword whole wholechars\[\] brightcyan
    keyword whole define\[\] brightcyan

    keyword whole spellcheck\[\] CL_KEYWORD
    keyword whole keyword\[\] CL_KEYWORD
    keyword whole context\[\t\s\]exclusive brightred
    keyword whole context\[\t\s\]default brightred
    keyword whole context\[\] brightred
    keyword whole caseinsensitive\[\] brightred

    keyword whole linestart file\[\] brightgreen
    keyword whole linestart include\[\] brightred

    keyword whole black black blue
    keyword whole red red
    keyword whole green green
    keyword whole brown brown
    keyword whole blue blue black
    keyword whole magenta magenta
    keyword whole cyan cyan
    keyword whole lightgray lightgray
    keyword whole gray gray black
    keyword whole brightred brightred
    keyword whole brightgreen brightgreen
    keyword whole yellow yellow
    keyword whole brightblue brightblue black
    keyword whole brightmagenta brightmagenta
    keyword whole brightcyan brightcyan
    keyword whole white white

context linestart # \n CL_COMMENT
    spellcheck

# Ideally we would have defined comments with "context linestart \[\s\]# ...",
# but contexts can't start with a character class. So we define comments twice.
context linestart \s\[\s\t\]# \n CL_COMMENT
    spellcheck

context linestart \t\[\s\t\]# \n CL_COMMENT
    spellcheck
