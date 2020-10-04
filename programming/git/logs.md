# logs
- git log
- git log -n 5
  view recent 5 commits
- git log --since=2018-09-15
- git log --until=2018-09-15
- git log --author="Brij"
- git log --grep="Init"
- git log --oneline
- git log --online -3
- git log --format=oneline
- git log --since="2012-06-20"
same as --after
- git log --until="2012-06-20"
same as --before
- git log --since="2 weeks ago" --until="3 days ago"
- git log --since=2.weeks --until=3.days
- git log --author="Kevin"
- git log --grep="temp"
- git log 2907d12..acf8750 --oneline
show from 1 commit to other
- git log abcdef.. file.ext
commit to file after specifc commit
- git log -p
- git log -p abcdef.. file.ext
- git log --stat --summary
shows statistics, summary
- git log --format=short
  formats: short, medium, full, fuller, email, raw
- git log --graph
- git log --oneline --graph --all --decorate

- git show <sha>
- git show --format=oneline HEAD
- git show --format=oneline HEAD^
- git ls-tree master
- git show <tree-ish for file>

- see changes of a commit
  git show <COMMIT>

