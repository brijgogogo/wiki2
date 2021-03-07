# functions

calling functions:
<variable> = <functionName>(<argument1>, <argument2>, ...)

== built-in functions ==
- type(arg)
typeOfTen = type(10)
print(typeOfTen)
tells us the type of any variable or value

- input(<prompt string>)
get input from user
username = intput("enter your name: ")

- print("hello")
- print("*" * 10) : prints 10 times
- print(var1, var2)
prints multiple variables in same line

- conversion functions int, float, str
int("15") == 15 # converts string or float to an integer
float("20.5")
str(3) == "3"



== user-defined functions ==

def <functionName>(<optionalParameters>):
  <indented statement(s)>

Python relies on indenting to show a grouping of lines. The convention is to indent four spaces.

* function
def add_numbers(a, b):
  print(a + b)

* return statement
def get_number():
  return 2

* When a "return" statement is executed without any returned value, Python returns a special value of None. None means no value.

* return multiple values
return <value1>, <value2>, <value3>

* If your main code tries to call a function before it is defined, Python gives an error.

* type hinting: gives indication to compiler and IDEs about types
def add_numbers(a: int, b: int) -> int:
  return a + b

* arguments
students[]
def add_student(name, student_id=332)
    student = {"name": name, "student_id":student_id}
    students.append(student)

add_student("Brij")
add_student("Piyush", 15)
add_student(name="Pranav", student_id=15)

* variable number of arguments
def var_args(name, *args):
    print(name)
    print(args)

var_args("Piyush", "Pranav", "Brij")

* keyword args (named variable arguments)
def var_args(name, **kargs):
    print(name)
    print(kargs["description"], kargs["feedback"])

var_args("Brij", description="Loves Python", feedback=None)


* nested functions
def get_students():
    students = ["Piyush", "Pranav"]
    def get_students_titlecase()
        students_titlecase = []
        for student in students:
            students_titlecase.append(student.title())
        return student_titlecase
    students_titlecase_names = get_students_titlecase()
    print(students_titlecase_names)

Use nested functions when you don't need the logic anywhere else in your code, thereby not polluting your code.
Nested functions can access variables from outer function, this is called closure.

