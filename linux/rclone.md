# rclone

- rclone config
To set up a remote clould storage
- rclone lsd remote:
list directories of "remote". Here remote if name of cloud storage set up using config
- rclone copy /local/path remote:/cloud/path
- rclone sync /local/pth remote:/cloud/path
- rclone sync --dry-run /local/pth remote:/cloud/path
- rclone check source:path dest:path [flags]

- rclone sync source:path dest:path [flags]

## examples
- rclone sync dropbox_remote:/ ./dropbox/
sync source and destination (modifying only destination)


## my cloud storages
* rclone : b1_onedrive for brijgogogo1@gmail.com at OneDrive
* rclone : dropbox_remote at dropbox
* mega.nz

## sources
https://rclone.org/docs/


