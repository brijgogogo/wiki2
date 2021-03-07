# lists
Hold multiple values under one variable
Like array in other programming languages

students_names = [] # empty list
students_names = ["Mark", "Katarina", "Jessica"]
students_names[0] == "Mark"
students_names[2] == "Jessica"
students_names[-1] == "Jessica" # last element, -2 is second last and so on

student_names.append("Brij") #add to the end

"Brij" in student_names == True # check if value is present

len(student_list) == 4 # number of elements

del student_names[2] # removes "Jessica" element

== slicing ==
students_names = ["Mark", "Katarina", "Jessica"]
students_names[1:] == ["Katarina", "Jessica"]

students_names = ["Mark", "Katarina", "Jessica"]
student_names[1:-1] == ["Katarina"]

