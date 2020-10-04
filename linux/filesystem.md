# Linux File System

Any file storage system, whether it’s a CD-ROM, a hard drive or a USB stick, is essentially a device for storing a long chain of 1s and 0s. When we interact with it, however, we don’t see this; instead, we see files, directories, symbolic links and so on. The software that makes the translation for us is called a file system.

The disk may be split up into individual sections, called partitions, each of which can have its own file system – or none at all.  The disk keeps track of its partitions through its partition table, which tells it how many partitions there are, and where each one begins and ends.

## Partitioning tools:
- [cfdisk](./cfdisk.md)

File names in linux are case-sensitive.
There is no concept of extensions in linux (like image.jpg, even image or image.blabla will work).

- file fileName : info about file type
- man hier :show file system hierarchy

- [partitions](./partitions.md)
- [devices](./devices.md)
- [links](./links.md)
- [usb](./usb.md)
- [ls](./ls.md)
- [find](./find.md)
- [locate](./locate.md)
- [xargs](./xargs.md)
- [grep](./grep.md)
- which : locate a command
- [wildcards](./wildcards.md)
- [ripgrep](./ripgrep.md)
- wc <file> : tells number of lines, words and characters in a file
- nl <file> : print line numbers
- tree
- file file1 : tells what kind of data file contains
- du -sh dir1
to find size fo directory
-s = summarize
-h = human readable
- cp *.jpg dir1/
  * matches any  sequence of characters except /
? matches a single character
- mv out{put.pdf,new.pdf} : rename output.pdf to outnew.pdf
- mkdir test{1,2,3} : create test1, test2, test3 directories
- mkdir -p work/{d1,d2}/{src,bin,bak} : make directory tree
- mkdir -p work/{d1/,d2/{src/,bin/}} : make directory tree
- cp file.txt{,.bak} : create backup of file



## Navigating Linux file system
- cd - :go back to previous directory
- pushd /path/to/dir
- popd
- dirs
- mkdir /some/path && cd $_
makde dir and cd into it

