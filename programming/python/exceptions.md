# exceptions

student["last_name"] = "Sharma"

try:
    last_name = student["last_name"]
    numbered_last_name = 3 + last_name
except KeyError:
    print("error finding last_name")
except TypeError as error:
    print("can't add these two")
    print(error)
except Exception:
    print("unknown error")



