# python packages
The base Python language only has a small number of keywords and built-in functions. Python also has somne built-in prewritten packages of code that are available to programmers. These are installed on the hard disk when you install Python. Altogether, they comprise what is called Python Standard Library. Then there are external packages available on internet, written by other programmers.

- Base Python language
- Python Standard Library - Python built-in packages, installed with Python
- External downloadable packages

import <packageName>

help(<packageName>): documentation of all the functions available in the package

== example ==
import random

# random between 1 and 10
aRandomNumber = random.randrange(1, 11)
# random between 0 and 8
myRandomNumber = random.randrange(9) # same as random.randrange(0, 8)



