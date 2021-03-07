# dictionaries

student = {
  "name" : "Mark",
  "student_id": 15163,
  "feedback": None
}

student["name"] == "Mark"
student["last_name"] == KeyError # Exception
student.get("last_name", "Unknown") == "Unknown" # get default value if key not present
student.keys() # get keys as list
student.values() # get values as list
student["name"] = "Brij"
del student["name"]

