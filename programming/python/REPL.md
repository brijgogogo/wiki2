# REPL
Read Evaluate Print Lool

When "python" binary is run, it provides an interactive shell to execute python code


# in REPL you can say "import file_name", then files methods can be called from the repl using file_name.methodName()

# reload a file into REPL
import import lib
importlib.reload(file_name)


## ipython
- (robust interactive shell)
- syntax highlighting
- auto indent

reloading a file automatically in ipython
%load_ext autoreload
%autoreload 2


from file_name import fun1
fun1()



