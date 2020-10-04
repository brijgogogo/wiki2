# stash
stash is a place where we can store changes temporarily without having to commit them to the repository. It is not part of working directory, staging index or repository. The changes get stored as a snapshot/change-sets, just that they don't have a SHA associated with them.

When you need to switch branches and you have some changes that you're not ready to turn into a commit yet, you use stash.

* git stash save "changed a file"
* git stash --include-untracked-file save "message"
* git stash list
show what is in stash
Stash is available from any branch
* git stash show stash@{0}
show diff
* git stash show -p stash@{0}
show diff as patch
* git stash pop stash@{0}
applies stash to current branch and removes from stash
if we don't specify stash identifier, it pulls first one
* git stash apply stash@{0}
applies but doesn't remove from stash
* git stash drop stash@{0}
deleting a stash
* git stash clear
clears everything from stash

