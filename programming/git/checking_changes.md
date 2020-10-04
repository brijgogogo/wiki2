# Diff

- Know about the difference between working directory, staging index and repository
  git status
- compare what's in repository (the version that out HEAD pointer is pointing at) vs what's in our working directory
  git diff
- to see changes not yet staged in a specific file
  git diff fileName.ext
- to see all changes staged
  git diff --staged
- old version of --staged
  git diff --cached fileName.ext
- git diff --stat
- show changed words (instead of line)
  git diff --color-words file.ext
- what is different from our last commit
  git diff HEAD
- show diff between working directory and directory at the time of <sha> commit
  git diff <sha>
  git diff <sha> file.ext
- diff between two treeish
  git diff <sha1>..<sha2>
  git diff <sha1>..<sha2> file.ext
  git diff <sha1>..HEAD
  git diff <sha1>..HEAD^^
  git diff --stat --summary <sha1>..HEAD
  git diff -b <sha1>..HEAD
    -b = --ignore-space-change
  git diff -w
    -w = --ignore-all-space

