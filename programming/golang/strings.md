# strings
Series of bytes that usually represent text characters.

- string literal: text between double quotation marks
- Default value : "" empty string
- escape sequences: \n, \t, \", \\
- immutable: you can reassign the value of a string variable, but you cannot change the value of the string that is assigned to it.

```go
var s string = "hello boys"
var b byte = s[6] // Go uses a sequence of bytes to represent a string

str + str2  // concatenation

len(str)             // get length of string
utf8.RuneCountInString(str) // unicode/utf8

// substring using index expression like in slices
var s = str[0:4]
str[:13]
str[10:]

var x rune = 'h'
var y string = string(x)     // rune to string
var z byte = 'h'
var y2 string = string(z)    // byte to string

var x int = 65
var y = string(x) // y will be "A"

var s string = "value";
var b []byte = []byte(s)    // string to slice of byte: string to UTF-8 bytes
var r []rune = []rune(s)    // string to slice of rune

// comparison operators can be use ==, >, <

// conversion
i, err := strconv.ParseFloat(input, 64) // 64 is number of bits of precision for the result
i, err := strconv.Atoi("32") // string to integer
strconf.Itoa(32) // integer to string
ParseBool(), ParseFloat(), ParseInt() // strings to values
FOrmatBool(), FormatFloat(), FotmatInt()  // converts values to string

bool, err = strconv.ParseBool("true")

string(v) //explicit cast to string

// string replace
broken := "G# r#cks!"
replacer := strings.NewReplacer("#", "o")
fixed := replacer.Replace(broken)

// remove all whitespace characters (newlines, tabs, regular spaces) from the start and end of a string.
input = strings.TrimSpace(input)
```
