# undo changes done at working directory
* git checkout .
This will revert all local uncommitted changes (should be executed in repo root):

* git checkout [some_dir|file.txt]
You can also revert uncommitted changes only to particular file or directory:
restore a file from the index


* git reset --hard HEAD
Yet another way to revert all uncommitted changes (longer to type, but works from any subdirectory):

* git checkout -- file.ext
undo the changes done in file.ext in working directory by getting it from repository
-- means to stay on current branch (we do not want branch)
`checkout` is used to get branch as well, if folder and branch names are same, then it will get the branch, so to stay in current branch use --

* git clean -fdx
This will remove all local untracked files, so only git tracked files remain:
Normally, only files unknown to Git are removed, but if the -x option is specified, ignored files are also removed.
WARNING: -x will also remove all ignored files, including ones specified by .gitignore! You may want to use -n for preview of files to be deleted.
If any optional <path>... arguments are given, only those paths are affected.
-d Remove untracked directories in addition to untracked files.
-f or --force
-n or --dry-run
-x : don't use ignore rules
-X : remove only ignored files

## unstage
* git reset HEAD file.ext
reset the staging index from repository at HEAD. The staging index gets the file from repository until HEAD.
remove file from staging area (if not committed)
It removes the staged file.ext from staging index

* git reset
This will unstage all files you might have staged with git add:

* git reset HEAD .
remove everything from staging area (if not committed)


## undo changes done at repository
* git commit --amend -m 'new message'
change commit message
only last commit is allowed to be changed as changing previous commits would need the SHA to be changed/recomputed for all the following commits. Last commit doesn't point to anything so it can be easily amended.
* git checkout <full or partial SHA> -- file.ext
checkout file with a specifc revision
After taking checkout, file will show modified, then you can commit it (reverting to previous revision)
* git revert <full or partial SHA>
reverts change from a revision, and commits
* see git reset below

## git reset
moves the HEAD pointer to specific commit
reset types:
1. --soft
does not change staging index or working directory
2. --midex (default)
changes staging index to match repository
does not change working directory
3. --hard
changes staging index and working directory to match repository

* cat .git/HEAD
check HEAD pointer
* cat .git/refs/heads/master
check master HEAD pointer
* git reset --soft <full or partial SHA>
* git reset --mixed <full or partial SHA>
* git reset --hard <full or partial SHA>


## untrack
Untrack files already added to git repository based on .gitignore
git rm -r --cached .
git add .
git commit -m '.gitignore fix'

http://www.codeblocq.com/2016/01/Untrack-files-already-added-to-git-repository-based-on-gitignore/

