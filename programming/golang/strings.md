# strings
Series of bytes that usually represent text characters.

- string literal: text between double quotation marks
- Default value : "" empty string
- escape sequences: \n, \t, \", \\


## Concatenation
str + str2

## Length
len(str)
utf8.RuneCountInString(str) // unicode/utf8

## Substrings
str[0:4]
str[:13]
str[10:]


## Comparison
--
>
<


## Conversion
i, err := strconv.ParseFloat(input, 64) // 64 is number of bits of precision for the result
i, err := strconv.Atoi("32") // string to integer
strconf.Itoa(32) // integer to string
ParseBool(), ParseFloat(), ParseInt() // strings to values
FOrmatBool(), FormatFloat(), FotmatInt()  // converts values to string

bool, err = strconv.ParseBool("true")


string(v) //explicit cast to string


## string replace
  broken := "G# r#cks!"
  replacer := strings.NewReplacer("#", "o")
  fixed := replacer.Replace(broken)


## strings.TrimSpace(string)
removed all whitespace characters (newlines, tabs, regular spaces) from the start and end of a string.

  input = strings.TrimSpace(input)
