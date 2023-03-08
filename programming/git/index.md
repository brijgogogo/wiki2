# git
version control system (VCS)
source code management (SCM)

## Theory
- [history](./history.md)
- [distributed](./distributed.md)
- [git_architecture](./git_architecture.md)
- [git_checksum](./git_checksum.md)
- [head_pointer](./head_pointer.md)

- [ssh](./ssh.md)

### Config
- [git_config](./git_config.md)
- [git_auto_completion](./git_auto_completion.md)
- git --version

## Help
- git help
- git help <command>
- git help log
- man git-log

## Basics
- initialize new repository
  git init
- add all changes in current directory
  git add .
  git add -A
- add specific files
  git add '*.txt'
  git add file_name.ext
- remove files form disk and stage them for removal
  git rm file_to_delete.ext
  git rm '*.txt'
- Mark folder for removal recursively
  git rm -r folder
- moving/renaming
  git mv file1.txt file2.txt
- commit
  git commit -m 'message'
- adds and commits in one go. It doesn't include untracked and deleted files.
  git commit -am 'message'
- git add directory/ = git add directory/*

## [checking_changes](./checking_changes.md) (diff)
## [logs](./logs.md)
## [undo](./undo.md)
## [ignoring](./ignoring.md)
## [navigating](./navigating.md) commit tree
## [branches](./branches.md)
## [stash](./stash.md)
## [remotes](./remotes.md)
## [aliases](./aliases.md)
## [git_hosting](./git_hosting.md)
## [git_tools](./git_tools.md)
## [git_flow](./git_flow.md)
## [git_submodules](./git_submodules.md)
## [diff_and_merge](./diff_and_merge.md)
## [merge_conflicts](./merge_conflicts.md)


## sources
https://try.github.io/levels/1/challenges/1
https://git-scm.com
https://www.linkedin.com/learning/git-essential-training


## reading list
https://martinfowler.com/articles/branching-patterns.html
https://towardsdatascience.com/api-as-a-product-how-to-sell-your-work-when-all-you-know-is-a-back-end-bd78b1449119
https://hacks.mozilla.org/2020/04/code-quality-tools-at-mozilla/




## Git Hooks
Extensibility points that are triggered when certain Git actions occur.
Can be written in any language, they have to be executable. Git checks exit code to determine success or failure.

### Types of hooks
- Pre-* hooks: called before the git command executes, can abort the git command.
  - exampless: pre-commit, pre-rebase
- Post-* hooks: called after git command executes, do not affect the git command.
  - exampless: post-commit, post-checkout
- Misc hooks: called while the git command executes, can abort the git command.
  - examples: prepare-commit-msg, commit-msg

### Location of hooks
- Client-side hooks: mainly for developer's own productivity or defensive style
- Server-side hooks: mainly to enforce server repository policy


Use --no-verify flag to bypass pre-commit hooks
