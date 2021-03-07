# polymorphism

* inheritance
In Python you can inherit from multiple classes
class Student:
    school_name = "School"

    def __init__(self, name, student_id):
        self.name = name

    def get_school_name(self):
        return self.school_name


class HighSchoolStudent(Student):
    school_name = "High School"

    # overridden method, use super() to access base class method
    def get_school_name(self):
        return "This is high school student" + super().get_school_name()

brij = HighSchoolStudent("Brij")

