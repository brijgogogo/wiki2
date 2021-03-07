# errors
- syntax errors / compile errors
- exception errors  / runtime error
- logic errors / wrong answer

When an error occurs at runtime, Python outputs an error message called a "traceback". The term "traceback" refers to the sequence of calls that were made to get the function where the error occurred.


== error checking ==
try:
  <statements that may cause an error>
except:
  <statements to execute IF an error occurs>
else: # optional
  <statements to execute if NO error occurs>



