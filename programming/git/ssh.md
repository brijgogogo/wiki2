# ssh

## setup ssh in Github
1. install OpenSSH
2. ssh-keygen -t rsa -b 4096
3. eval $(ssh-agent)
4. ssh-add ~/.ssh/id_rsa
5. Github -> Profile -> Settings -> SSh & Gpg Keys -> New Ssh
6. copy content of id_rsa.pub into key textbox

git config --global user.name "<your username>"
git config --global user.email your@email.com


$ ssh -T -p 443 git@ssh.github.com
test ssh connection with github

## clone using ssh
git clone git@github.com:brijgogogo/wiki.git

## for existing repositories, change origin url to use ssh in .git/config file
# .git/config
[remote "origin"]
	url = git@github.com:brijgogogo/wiki.git

= sources =
https://help.github.com/en/articles/using-ssh-over-the-https-port#enabling-ssh-connections-over-https

