# git configuration

git stores configuration at 3 levels:
1. System (applies to all users, at /etc/gitconfig)
2. User (at ~/.gitconfig)
3. Project (at project_dir/.git/config)

We can modify these files manually or use `git config`
* git config --system : to modify system level config
* git config --global : to modify user level config
* git config : to modify project level config

* git config --global user.name "Brij Sharma" : set user name
* git config --global user.email "your@email.com"
* git config --global core.editor "vim" : set editor for git
* git config --list : view all configs
* git config user.name : view specifc config
* git config --global color.ui true

