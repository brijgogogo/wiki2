# rsync
Dropbox, Google Drive

- rsync -r -P --info=progress2 source destination
-r : recursive
-P : --partial, --progress
--info=progress2 overall progress
copy with progress bar


- mkdir dir1 dir2
- touch dir1/file{1..100}.txt
- rsync -r dir1/ dir2
r: recursive (necessary for directory syncing)
trailing slash (/) after dir1 is necessary, if not used it would put dir1 in dir2
- rsync -a dir1/ dir2
a: archive (syncs recursively, preserves symbolic links, special and device
files, modification times, group, owner, permissions)
- rsync -anv dir1/ dir2
n: --dry-run
v: verbose
- -z
compression to reduce network transfer
- -P
--progress : shows progress bar
--partial : to resume interrupted transfers
- --delete
deletes file from destination directory if not in source.
by default rsync does not delete
- --exclude=
If you wish to exclude certain files or directories located inside a
directory you are syncing, you can do so by specifying them in a
comma-separated list following the --exclude= option
rsync -a --exclude=pattern_to_exclude source destination
- --include=
If we have specified a pattern to exclude, we can override that exclusion for
files that match a different pattern by using the --include= option.
rsync -a --exclude=pattern_to_exclude --include=pattern_to_include source destination

-h : human-readable
-c, --checksum - skip based on checksum, not mod-time & size

## sources
https://wiki.archlinux.org/index.php/rsync
https://www.digitalocean.com/community/tutorials/how-to-use-rsync-to-sync-local-and-remote-directories-on-a-vps

