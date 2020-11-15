# Reading/Writing to/from terminal

## Println function
Prints any number of arguments passed, separated by space in terminal and adds a new line.
  fmt.PrintLn("argument1", "argument2")


## reading user input
  fmt.Print("Enter your name: ")
  reader := bufio.NewReader(os.Stdin)
  input, _ := reader.ReadString('\n')
  fmt.Println(input)


## formatted printing
  fmt.Printf("One-third: %0.2f\n", 1.0/3.0)
  formattedString := fmt.Sprintf("One-third: %0.2f\n", 1.0/3.0)
  fmt.Printf(formattedString)

  percent signs (%) : start of formatting verb
  formatting verb: section of the string that will be substituted with a value in a particular format.

  - verb types
  %s : string
  %d : decimal integer
  %f : floating-point number
  %t : boolean (true or false)
  %v : any value, formatted as per value type
  %#v : any value, formatted as it would appear in Go program code (to show values that would otherwise be hidden in output like "\t")
  %T: type of value (int, string, etc.)
  %% : literal percent

  - width
  %12s : printed value will be of 12 characters in width, padded with spaces if required
  %5.3f : 5 is minimum width of entire number, 3 is width after decimal point (number is rounded)
  %.2f : floating point number of any precision, rounded to 2 decimal points


## Command-line arguments
os.Args gets set to a slice of strings representing the command-line arguments
First element is name of the executable.
