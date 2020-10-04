# git branches
- branches are cheap, don't take lot of space, can be easily deleted
- one working directory, same directory where we work
- fast context switching


Default branch is called master.
HEAD points to the last commit in current branch.

## branch info
* git branch
list branches, current branch is marked with asterisk
-a to list local and remote branches
* cat .git/HEAD
where HEAD is pointing (or which branch is active)
* ls -la .git/refs/heads
has all branches
* cat /git/refs/heads/master
SHA of master
* git log --graph --oneline --decorate --all


## creating branches
* git branch <branch_name>
create branch
* git checkout <branch_name>
switches to an existing branch
* git checkout -b <name>
create a new branch from current working directory and immediately switch to it.

you cannot switch to a different branch if you have any uncommitted conflicting changes. This includes modified files, but not untracked files. We can either scrap changes by checking out specific files, or commit changes, or stash changes, which is like a pocket where we save changes for later.

* git push --set-upstream origin <branch>
-u == --set-upstream
* git push origin <new_branch>
to push your new branch

* git checkout --track origin/branch_name
take branch from remote
from git 1.7 onwards: git checkout <branchName>

## comparing branches
* git diff master..<another_branch>
compare branches
* git diff --color-words <branch1>..<branch2>
* git diff --color-words <branch1>..<branch2>^
previous commit of branch2
* git branch --merged
to know if current branch contains another branch


## renaming, deleting branches
* git branch -m branch_name new_branch_name
renames branch
-m = --move
* git branch -d <branch_name>
or --delete
use -D to force delete
deletes local branch
* git push origin --delete <branch_name>
To delete <branch_naem> from remote

## replace-local-branch-with-remote-branch-entirely-in-git
That's as easy as three steps:
Delete your local branch: git branch -d local_branch
Fetch the latest remote branch: git fetch origin remote_branch
Rebuild the local branch based on the remote one: git checkout -b local_branch origin/remote_branch

## show branch on prompt
__git_ps1 is a function in git completion script that gives branch name prompt

export PS1='$(__git_ps1 "(%s")) > '
export PS1='\W$(__git_ps1 "(%s")) > '

put it inside import of git completion script

In Windows, put export statement in .bashrc in user directory.

## merging branches
* git merge [branch_name]
merge the specified branch into current branch
* git branch --merged
to show merged branches (check same in comparing branches)
* git log [branch_name] --oneline -3

fast-forward merges: HEAD pointer starts pointing to the SHA from branch being merged. It just moves forward from where it was.

* git merge --no-ff branch
don't do fast-forward merge, make a new commit
* git mrege --ff-only branch
do only fast-forward merge. If fast-forward merge is not possible, abort.

## merge conflict
occurs when after the branch is made, changes occur in same file and same line in both branches.

Once conflic occurs, we go into MERGING state:

resolving conflicts:
1. abort merge
git merge --abort
2. resolve conflicts manually
<<<<<<<< HEAD
========
>>>>>>>> branch_name
git add file.ext
git commit
No need of message as it was already in the middle of merge
3. use a merge tool
git mergetool --tool=<your_merge_tool>
you can add merge tool to your config as well.

## strategies to reduce merge conflicts
* keep lines short
* keep commits small and focused
* beware stray edits to whitespace (spaces, tabs, line returns)
* merge often
* track changes to master (merge critical changes from master into your branch)


## sources
https://nvie.com/posts/a-successful-git-branching-model/
https://github.com/nvie/git-toolbelt#readme



