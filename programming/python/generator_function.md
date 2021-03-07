# generator function

students = []

def read_file():
    try:
        f = open("file.txt", "r")
        for student in read_students(f):
            students.append(student)
        f.close()
    except Exception
        print('could not read file')

def read_student(f)
  for line in f:
  yield line

