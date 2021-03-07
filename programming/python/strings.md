# strings
Strings are immutable.
Python 3 uses Unicode by default.
Python2: byte strings

'Hello' == "Hello" == """Hello"""
Use single, double or triple quotes for strings.
Quote can be escaped with backslash (\)

"hello".title()
"hello".capitalize() == "Hello"
"hello".replace("e", "a") == "hallo"
"hello".isalpha() == True
"123".isdigit() == True
"some,csv,value".split(",") == ["some", "csv", "value"]

name = "Brij"
machine = "Arch"

# string format function
"Nice to meet you {0}. I am {1}".format(name, machine)

# string interpolation
f"Nice to meet you {name}. I am {machine}"

You can use \ to continue string in next line. Or you can use triple-quoted string.
In triple-quoted string literal, line breaks remain.

raw string: starts with r or R before quote. In raw string, escape sequences are not interpreted.

# concatenation
firstString + secondString

# substring
str[0:3] : get 3 characters from beginning





