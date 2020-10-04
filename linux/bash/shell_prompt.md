# shell prompt

Bash, ksh, sh use $PS1
Csh, tcsh, zsh use $prompt

https://www.booleanworld.com/customizing-coloring-bash-prompt/

- PS1='[\u@\h \W]\$ '
- PS1='>>> '
- PS1='\u \w $ '
- PS1='[\t] \u \w\n$ '

## escape sequences for prompt
- \u : current user
- \w : current working directory
- \W : last fragment of working directory
- \h : name of computer upto dot
- \H : full host name
- \d : date
- \t : time - 24 hour format
- \T : time 12 hour format
- \@ : time with 12 hour am, pm
- \A: time with 24 hour HH:MM format
- \n : new line
- \$ : if you are normal user, it will show $, if you are root it will show #

## ANSI escape sequences for color enclosed in \[  \]
- \e[31m : red
- \e[36m : cyan
- \e[33m : yellow
- \e[1m  : bold text
- \e[0m  : reset
PS1='\[\e[32m\u\] \[\e[36m\w\] \[\e[33m\]\[\e[1m\]$\[\e[0m\] '

## examples
PS1='\[\033[00;32m\]\u\[\033[00;33m\]@\[\033[00;32m\]\h\[\033[01;30m\]:\[\033[01;36m\]\w\[\033[01;37m\]$ \[\033[00m\]'

