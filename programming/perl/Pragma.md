# Pragma
A pragma is something that tells Perl compiler how to act.

- utf8 pragma is needed to use Unicode
use utf8;

- warnings (like when a non-numeric is getting converted to number)
use warnings;
(or $ perl -w my_program)
(or #!/usr/bin/perl -w)

- diagnostics (warnings with descriptions)
use diagnostics;
(or $ perl -Mdiagnostics ./my_program)

- use Perl version
use v5.10;
