# comments and echo
:: use REM (remark) for comments, but they are printed if echo is on
:: use :: to add remarks in batch file. Unlike REM, it is not printed whether ECHO is off or on
:: :: is a hack, uses the label operator : twice, which is almost always ignored (FOR loop will error out with :: style comments)
rem batch script
@echo off
:: by default the batch interpreter will print out each command before it's processed
:: to avoid printing a command, prefix it with @. @ is a special operator to suppress printing of the command line.
:: to avoid printing throughout the program, run @echo off
:: You restore printing with: ECHO ON

