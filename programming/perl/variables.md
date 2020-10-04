# Variables

## Scalar variables
- Holds exactly on evalue.
- Name begins with a dollar sign (called the sigil) followed by letter or udnerscore, then possibly more letters or digits or underscores.
- Names are case sensitive

$my_name = 'Brij'; # assignment
$value = 2 + 3;

* undef value
Variables have the special undef value before they are first assigned.
If you try to use it as a numeric, it acts like zero.
If you try to use it as a string, it acts like the empty string.
Its neither a number nor a string, its an entirely separate kind of scalar value.

- defined function: returns false for undef, and true for everything else.

$next_line = <STDIN>;
if ( defined($next_line) ) {
  print "input: $next_line";
} else {
  print "No input\n";
}

- setting undef values via undef operator
$next_line = undef
