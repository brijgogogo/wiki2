# ignoring files
create .gitignore files at root directory and commit
we can use regular expressions like * ? [aeiou] [0-9]
we can negate expressions with !
for comments use #
blank lines are ignored
examples:
*.php
!index.php
assets/directory/
!assets/directory/tour_*.mp4
tempfile.txt
# comment
log/*.log
log/*.log.[0-9]

https://help.github.com/articles/ignoring-files
https://github.com/github/gitignore

## globally ignoring files
git config --global core.excludesfile ~/.gitignore_global
Not committed. Is as per user/operating system generated files.

## ignoring tracked file
git will not ignore already tracked file, even if it later added to .gitignore
* git rm file.ext
* git rm --cached file.ext
remove file from staging index.
git will start ignoring the file, still keep the file in repository and working directory

## tracking empty directories
git does not track empty directories, git is designed to be a file-tracking system.
To track empty directory, people use a trick to add a file like .gitignore or .gitkeep with no contents or comments


