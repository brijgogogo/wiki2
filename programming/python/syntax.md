# Lexical Structure


* end of physical line marks the end of most statements
You can join two physical lines into a logical line by ending the first line with a backslash (\). Lines after first line are called continuation lines.
Python joins adjacent physical lines if the first line has open parenthesis like (, {, [
Triple-quoted string literals span physical lines.
Indentation issues apply to the first physical line of each logical line.
Python uses indentation to express the block structure of a program.
The first statement in a source file must have no indentation.

Standard Python style is to use 4 spaces per indentation level.

v3 source file can use any Unicode character encoded as UTF-8.

You can tell Python to use non-standard encoding by adding first line as comment (coding directive or encoding declaration):
# coding: iso-8859-1

* case-sensitive

* start class names with uppercase letter and other identifiers with a lowercase letter.
* start private identifier with _
* strat strongly private identifier with double __
* ' and " surround string literals

* slicing
obj[start:stop]
obj[start:stop:stride]
obj[:stop]
obj[:stop:]
obj[None:stop:None]

* generating random number
import random

randomNumber = random.randrange(0, 10);

* loops
while True:


* input / output
print() # prints blank line
varableName = input('enter your name')

