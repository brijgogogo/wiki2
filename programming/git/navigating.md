# navigating commit tree
tree-ish: something that points to a commit
* full SHA-1 hash
* short SHA-1 hash
  - at least 4 character
  - unambiguous (8-10 characters)
* HEAD pointer
* branch reference, tag reference
* ancestry

referring parent commit
* HEAD^
* acfd7504^
* master^
* HEAD~1
* HEAD~

referring grand parent commit
* HEAD^^
* acf87504^^
* master^^
* HEAD~2

checking tree:
* git ls-tree HEAD
what is in repository
* git ls-tree master
* git ls-tree master directory1/
* git ls-tree master^ dir1/
blob : a file




