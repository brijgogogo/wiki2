# loops

student_name = ["Piyush", "Pranav", "Brij"]

* for loop
for name in student_names:
  print("student name is {0}".format(name))

* range function
x = 0
for index in range(10): # index will be 0, 1, 2...9
  x = x + 10
  print("value of X is".format(x))

for index in range(5, 10) # index will be [5, 6, 7, 8, 9]

for index in range(5, 10, 2) # index will be [5, 7, 9]


* break
If a "break" statement is reached, control is immediately transferred to the first statement past the last line of the loop.

* continue
transfers control back to the while/for statement at the top of the loop, without executing the rest of the code inside the loop

* while loop
x = 0
while x < 10:
  print("count is {0}".format(x))
  x += 1




