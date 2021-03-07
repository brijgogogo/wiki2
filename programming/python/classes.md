# class
Logical group of functions and data
Functions in a class are called methods.
All methods are public

* empty class
class Student:
  pass

* creating instance
student = Student()
print(student)


* class
students = []

class Student:
    def add_student(name, student_id=332):
        student = {"name", "student_id": student_id}
        students.append(student)

student = Student()
student.add_student("Brij")
print(students)

* constructor
self refers to class instance
class Student:
    def __init__(self, name, student_id=332)
        student = {"name", "student_id": student_id}
        students.append(student)

    def __str__(self):
        return "Student"

student = Student("Brij")
print(student) # uses __str__ overridden method


* class attributes
class Student:

    school_name = "KV" # static  attribute

    def __init__(self, name, student_id=332):
        self.name = name
        self.student_id = student_id
        students.append(self)

    def get_name_capitalize(self):
        return self.name.capitalize()

    def __str__(self):
        return "Student " +  self.name

    def get_school_name(self):
        return self.school_name

brij = Student("Brij")
print(brij)
print(Student.school_name)

