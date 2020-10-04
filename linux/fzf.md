# fzf

- find * -type f | fzf > selected
- <c-j> and <c-k> to move up/down
- Enter to select
- ESC  / <c-c> / <c-g> : exit
- -m : multi select mode
- tab / <s-tab> to mark multiple items in multiselect mode

## search syntax
abc : fuzzy-match
'abc : exact match
^abc : prefix-exact-match
abc$ : suffix-exact-match
!fire : inverse-exact-match
!^fire : inverse-prefix-exact-match
!abc$ : inverse-suffix-exact-match
^abc def : extended-search-mode: multiple search terms separated by space


## terminal/shell shortcuts
- fzf, then select file/directory, then <C-T> : path is pasted on command line
- <C-R> : paste selected command from history on command line
- <Alt-C> : cd into selected directory

## fuzzy completion for bash
trigger sequence: **

$ vim **<tab>        : search file in current directory
$ vim ../**<tab>     : search file in parent directory
$ vim ../fzf**<tab>  : search file in parent directory that match fzf
$ vim ~/**<tab>      : search in home directory
$ cd **<tab>         : directories under current directory
$ cd ~/github/fzf**<tab>
- kill -9 <tab>
- ssh **<tab>        : gets names from /etc/hosts and ~/.ssh/config
- telnet **<tab>



## Sources
https://github.com/junegunn/fzf#installation

