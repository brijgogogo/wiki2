# reading/writing files

* access modes:
w: writing; overwrites the entire file
r: reading a text file
a: appending to a new or existing file
rb: reading a binary file
wb: writing to a binary file

* writing text
f = open("file.txt", "a") # second arg: access mode
f.write("hello" + "\n")
f.close()

* reading text
f = open("file.txt", "r")
for l in f.readlines():
  print(l)
f.close()

