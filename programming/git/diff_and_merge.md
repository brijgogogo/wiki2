# diff & merge

## Diff: Vimdiff
- git config --global diff.tool vimdiff
- git config --global difftool.prompt false


- git difftool
(to make fiel non read only in vim use :set noro)


## Merge: Vimdiff
- git config --global merge.tool vimdiff
- git config --global merge.conflictstyle diff3
  styles: merge (default), diff3
- git config --global mergetool.prompt false

Vimdiff
:diffg RE " get from REMOTE
:diffg BA " get from BASE
:diffg LO " get from LOCAL
