# Perl
- Created by Larry Wall in mid-1980s
- backronym: Practical Extraction and Report Language / Pathologically Eclectic Rubbish Lister
- interpreter: perl
- Perl 5 and Perl 6 are different languages.
- Perl is optimized for problems which are about working with text.
- Comes preinstalled is most Linux/BSD systems.
- Perl scripts don't require any filename or extensions, but some systems require .plx extension (PerL eXecutable)


## Perl Language
- # comment
- Semicolons is needed to separate statements, not terminate.
- free-form language (use space,tabs, other whitespaces at will)


## Perl interpreter
$ perl my_program
Perl interpretor compiles and runs your program in one step -  Perl's internal compiler first runs through your entire source, turning it into internal bytecodes. Perl's bytecode engine takes over and actually runs the bytecode.

## [Data_Types](./Data_Types.md)
## [variables](./variables.md)
## [Pragma](./Pragma.md)



## Print
print operator takes a scalar argument and puts it onto standard output.

print "hello";
print 7 + 2;
print "6 times 7 is ", 6 * 7, ".\n"; # prints series of values (list)

* better version of print: say (adds newline at the end)
use v5.10;
say "6 times 7 is ", 6 * 7;


## Get user input
<STDIN> - line-input operator. Ends with a new line.

$line = <STDIN>;
if($line eq "\n") {
 print "no input\n" ;
} else {
  print "input: $line";
}

## chomp()
If the variable holds a string, and if the string ends in a newline character, chomp() removed the newline.

$text = "a line\n";
chomp($text);

chomp($text = <STDIN>);





## Sources
- Learning Perl (book)
