# submodules
- include other git repositories into a repository
- configured via a .gitmodules file at root directory

* git submodule add <git_url>
* git submodule add <git_url> /path/for/submodule


* git submodule init
other persons in the team need to initiate
This will pull all the code from the submodule and place it in the directory that it's configured to.


* git clone --recurisve <url>
clone a repo including submodules


* git submodule update --init
load submodules in already cloned repo

* git submodule update --init --recursive
same as above, but if there are nested submodules

* git submodule update --init --recursive --jobs 8
download up to 8 submodules at once
* git pull --recurse-submodules
pull all changes in the repo including chanes in the submodules
* git submodule update --remote
pull all changes for the submodules
* git submodule foreach 'git reset --hard'
* git submodule foreach --recursive 'git reset --hard'


# add soubmodule pointing to a branch
* git submodule add -b master <url>
* git submodule init

## sources
https://gist.github.com/gitaarik/8735255

