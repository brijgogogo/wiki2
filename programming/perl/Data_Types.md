# Data Types
- Scalar: a single thing (number or string)

Perl automatically converts between numbers (base 10) and strings as needed based on the operator that you apply to the scalar value.
"12fred34" * " 3" # gives 36
Something that isn't a number at all converts to zero.


## Number literals
1234
12_34
12.34
12.34E10
011 # octal
0xAA # hex
hex('DEA') # hex function to convert string to hex
hex('0xDEA')
oct('0377') # 255 decimal
oct('377') # 255 decimal
0b11 # binary
oct('0b1101') # 13 decimal
oct("0b$bits") # converts $bits from binary

## String Literals
- Single-quoted: In single-quoted string literals, back-slash is used to espace single quote. Use double back-slash to get a back-slash. But \n is not for new-line. Single-quoted string literals can span multiple lines.
- Double-quoted: In double-quoted string literals, back-slash gets full power. \n is a new line.
"\t": tab
"\x{27668}" : Unicode HOT SPRINGS character code point
"\N{SNOWMAN}" : Unicode Snowman by name
\l : lowercase next letter
\L: Lowercase all following letters until \E
\u: : uppercase next letter
\U: : uppercase all following letters until \E
\Q: quote nonword characters by adding a backslash until \E
\E: End \L, \U, \Q

Double-quoted string are variable interpolated (variable names within the string are repalced with their values)

* Concatenation operation: . (dot)
"hello" . "world"       # gives "helloworld"
"hello" . ' ' . "world" # gives 'hello world'
'hello world' . "\n"    # gives "hello world\n"

* String repetition operator: x (lowercase letter x)
"fred" x 3 # is "fredfredfred"

* variable interpolation

$x = "Batman"
$y = "I am $x" # gives "I am Batman"
To put a literal dollar sign, use \$
y = "I am ${x}s" # delimiter

* string comparison
eq, ne, gt, lt, ge, le

## Boolean values
Perl doesn't have a separate Boolean data type.
- If the value is a number, 0 means false, all other numbers mean true.
- If the value is a string, the empty string ('') and the string '0' means false. All other strings mean true;
- If the variable doesn't have a value yet, it's false.
