# linux links

## INODE
- every file in the system has an inode (Index node)
- contains all file information except the file contents and name
They contain:
  - inode number
  - file size
  - owner information
  - permissions
  - file type
  - number of links

* ls -i : to view inode number of dirs or files

## types of links
1. soft links
    - symbolic link
    - pointer to original file
    - different inode number
    - if we delete the original file, softlinks will become useless
    - `ln -s orignal_file_name soft_link_name`
2. hard links
  - different name of the same file
  - same file size
  - same inode number
  - if you delete the original file, it will not affect hard link (it is like copy of a file)
  - `ln original_file_name hard_link_name`
  - hard links are not allowed for directories

- stat softLink
to view details of link

- unlink softLink
remove the soft link

