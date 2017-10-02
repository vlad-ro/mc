
// Comment followed by a string is broken:

/*".."      return KW_Range; */
//""

// Comment followed by a preprocessor is working:

/*#define */
//#define

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
