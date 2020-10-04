# Gitflow workflow

install git-flow
$ git flow init
it is a wrapper on top of git init
when executing on an existing repo, it will crate the develop branch

master branch - stores official release history
develop branch - serves as an integration branch for features

Feature branches use develop as their parent branch, and are merged into it when complete (this is called Feature Branch Workflow)

## without git-flow:
$ git checkout develop
$git checkout -b feature_branch
$ git checkout develop
$ git merge feature_branch

## With git-flow:
$ git flow feature start feature_branch
$ git checkout develop
$ git merge feature_branch
$ git flow feature finish feature_branch

Once develop branch is ready for release, for a "release" branch off of develop. Now you can add new features to develop branch. You can do bug fixes, documentation generation, other release orientation tasks in the release branch. Once it is ready, the 'release' branch gets merged into master and tagged with a version number. Also merge it back into develop. After mergin into master and develop, delete the release branch.

## Without the git-flow extensions:
$ git checkout develop
$ git checkout -b release/0.1.0
$ git checkout master
$ git merge release/0.1.0

## When using the git-flow extensions:
$ git flow release start 0.1.0
Switched to a new branch 'release/0.1.0'
$ git flow release finish '0.1.0'

Hotfix branches are used to fix production releases. They are based on master. Once fix is ready, merge into both master, develop and current release branch.

## Without the git-flow extensions:
$ git checkout master
$ git checkout -b hotfix_branch
$ git checkout master
$ git merge hotfix_branch
$ git checkout develop
$ git merge hotfix_branch
$ git branch -D hotfix_branch

## When using the git-flow extensions:
$ git flow hotfix start hotfix_branch
$ git flow hotfix finish hotfix_branch












