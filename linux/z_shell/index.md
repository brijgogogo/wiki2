# zsh 
Z shell - Paul Falstad - 1990
- interactive shell
- scripting language interpreter
- tab completion
- file globbing
- spelling correction
- directory aliases
- startup/shutdown scripts (zshrc, zlogout, etc)
- path extensions (cd /u/lo/b<tab> expands to cd  /usr/local/bin)
- floating point support (not available in bash)
- support for hash data structures

- pacman -S zsh
- pacman -S zsh-completions

- [Oh_My_ZSH](./Oh_My_ZSH.md)

- source ~/.zshrc
reload

- /usr/bin/zsh
- chsh -s /bin/zsh
- ~/.zshrc : configuration setting
- ~/.zprofile : a script that will run upon login

- bindkey -v
to enable vi mode in .zshrc

- zcalc
starts calculator
- prompt -l
lists prompt themes
- prompt <prompt_theme_name>

## prompt 
* prompt -l
* prompt <prompt_name>
* prompt -p


## configuration manager 
* https://github.com/sorin-ionescu/prezto
* https://ohmyz.sh/
* https://github.com/zsh-users/antigen


## sources 
https://wiki.archlinux.org/index.php/Zsh
https://www.zsh.org/
http://reasoniamhere.com/2014/01/11/outrageously-useful-tips-to-master-your-z-shell/


