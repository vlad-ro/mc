
// Comment followed by a string is broken:

/*".."      return KW_Range; */
//""
//''

// Are all these valid chars?
'\"'
'\''
// ''' // This is wrong
'"'
'\n'
'\t'
'\0'
'\1'
'\02'
'\023'

// Are all these valid chars inside a string?
"foo \' bar"
"foo \" bar"
"foo \0 bar"
"foo \t bar"
"foo \n bar"
