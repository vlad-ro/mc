
// Comment followed by a string is broken:

/*".."      return KW_Range; */
//"" test

// Comment followed by a preprocessor works:

/*#define */
//#define

"single line string - ok"

"multiline string
is not valid!?"

// Are all these valid chars?
'\"'
'\''
'''
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
