# merge conflicts

- identify conflicted files
  git status

Edit the conflicted files, then add them and commit them.


- git log --merge
  produce a log with a list of commits that conflict between the merging branches
- git reset --mixed
  undo changes to the working directory and staging area

- exit from merge process
  git merge --abort
- reset conflicted files to a known good state
  git reset


## Tools - Meld
Meld opens conflicting files in three ways:
left: previous version in the current branch
middle: merged version
right: version in the branch being merged

Final version of the merged file will be anything in the middle view.

$ git config --global merge.tool meld
$ git config --global mergetool.prompt false

$ git mergetool


$ git config --global diff.tool meld
$ git config --global difftool.prompt false
