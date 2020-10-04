# remotes / remote repository
There is a remote server where we can put our changes so that others can see them.

There is no difference between local git repository and repository on server as git is a distributed system. The server runs a lot of tools that allows it to work with lots of git clients.

When we put our change into remote repository using `push`, git creates a branch called `origin/master` in our local system that references the remote repository. It keeps them in sync.

When other people merge change to remote server and we `fetch` those changes, they become part of `origin/master`, but not merged into master. To be brought into our master branch we need to merge.

## adding remote
* git remote
lists the remotes
* git remote add <alias> <url>
e.g. git remote add origin https://github.com/user/repo.git
* git remote -v
more info
* cat .git/config
* git remote rm <alias>
remove remote

## changing remote
git remote set-url origin http://git.url
git push -u origin --all
git push origin --tags

## pushing changes to remote
* git diff origin/master..master
* git push -u <alias> <branch>
-u make it a tracking branch
e.g. git push -u origin master
* cat .git/config
* ls -la .git/refs/remotes/origin
* git branch -r
show remote branches
* git branch -a
shows local and remote branches
* git push
if it is tracking branch, you can simply use git push

## cloning remote repository
* git clone <url>
e.g. git clone https://github.com/user/repo.git
* git clone <url> <directory>

## tracking remote branches
* clone and -u option tracks the remote repo
* git config branch.<non_tracking_branch>.remote <name_of_remote>
start tracking
* git branch --set-upstream <branch_name> <alias>/<branch_name>
start tracking from git 1.7 onwards

## fetching changes from remote repo
* git fetch origin
* git fetch
if you have only one remote repo
* git log origin/master
our master doesn't change
origin/master changes after fetch
origin/master is just a branch like other branches. It is a remote branch. Git remains in charge of it, we can't take checkout of it, as it needs it to track remote branch.

## merging in fetches changes
* git diff origin/master..master
* git merge origin/master
* git log --oneline -3 master
* git pull = git fetch + git merge

## checking out remote branches
* git branch <branch_name> <tracking_branch>
e.g. git branch new_branch origin/some_branch
create local branch out of git remote branch
* git checkout -b <branch_name> <tracking_branch>
create and checkout

## deleting remote branch
* git push origin :branch_to_delete
Put a colon before branch name to delete, it means send nothing to remote branch. Empty before colon means nothing.
Remote branch is deleted, local branch remains
* git push origin --delete branch_to_delete
same as deleting branch


## collaborating
1. you can add collaborators in github
2. In github, you can create forks. Creates your version of the project, not part of the main one. Make your changes. In the main porject raise pull request.

## ssh keys
we don't want to type username and password everytime we push changes to remote.
1.Password caching: use a keychain program that will remember your username and password and git will use it to send to remote along with remote.
https://help.github.com/articles/set-up-git#password-caching
2. SSH keys: we have file in our local machine and we take same code (or part of it) to remote server (github). Git automatically sends that code to authenticate user.
https://help.gitub.com/articles/generating-ssh
Also switch to SSH in your repo github page.

