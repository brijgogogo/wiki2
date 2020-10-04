# Vim Buffers, Swaps
:h buffers
:help buffer-list

## Buffer
Computer memory where the file is loaded.
- allow switching between buffers without writing
  set hidden
- list buffers by numbers
  :ls
  :files
  :buffers
- switch to buffer by number
  :buffer 2
  :b2
- switch to buffer by file name (can be partial, supports tab completion, C-d to list file names)
  :b <fileName>
- Go to previously open buffer
  C-^
- delete current buffer
  :bdelete
  :bd
- delete buffer by number
  :bd3
- delete range of buffers by number
  :1,3bd
- delete all buffers
  :%bd
- execute command in all buffers
  :bufdo set nu
  :bufdo %s/#/@/g | w
  first substibute, then save for each buffer
- write in all buffers
  :wall
- open buffer by number in split
  :sbuffer 3
  :sb1
  :vert sb1

## Swap
Backup of the buffer which is saved by vim regularly (backup if something goes wrong).
Called swap as Vim keeps swapping the contents of the buffer in RAM with this file on hard disk.
Swap file has .swp extension.

- check current swap file name
  :swapname
- more info
  :help swap-file


