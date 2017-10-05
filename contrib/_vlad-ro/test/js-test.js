
// Left column contains valid numbers, right columns not

123             var23  23var
-123  123-  345+
239.*2345+.234-2.34
2.22            var2.3  2.3var
.12             name.3  .4name
1.              2..2    2.2.2

145e2           name145e2
145e-23         145e-23name
145e+12         name145e+12

1.45e2
1.45e-23        1.45e-23name
1.45e+12        name1.45e+12

0x00000100      0x00000100var
0X2
0xABDF
0x023B3e32a     name0x023B

// Couldn't get regular expressions recognized as a context due to conflict with '/' used in expressions.
// It is particularly bad when spans multiple lines:
var x = 1 / a;
more expressions...
var y = 2 / b;

// Great collection of regular expressions is available in highlight.js npm package, lib/languages/ folder.

// Regex can break highlight badly:
var re = /I'm|broken/;
// Treated as string until next '
