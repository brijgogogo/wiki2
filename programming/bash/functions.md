# functions
chunk of code which can be called multiple times

## defining function
function_name() {
  <commands>
}

## calling function
function_name

- parenthesis "()" are optional
- function definition must appear before any calls to the function

fun_with_args() {
  echo $1
}
fun_with_args Hello

- supply arguments directly after the function name
- arguments are accessible by $1, $2, etc within function

- bash function do not have return values
- they have return status, similart to program/command exit status which indicates it suceeded or not

fun_with_return() {
  return 5
}

fun_with_return
echo "previous function returned $?"

- $? contains the return status of the previously run command or function



