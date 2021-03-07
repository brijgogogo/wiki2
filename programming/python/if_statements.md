# if statements

if<boolean expression>:
  <indented block of code>

number = 5
if number == 5:
  print("number is 5")
else:
  print("number is not 5")

if a == '':
  break
elif a == 'a':
  print('a')


* multiple if conditions
number = 3
python_course = True

if number == 3 and python_course:
  print("this will execute")

if number == 17 or python_course:
  print("this will also execute")


* ternary if statement
a = 1
b = 2
"bigger" if a > b else "smaller"

