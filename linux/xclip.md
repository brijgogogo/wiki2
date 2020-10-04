# xclip
$ pwd | xclip
copied content of pwd to xclip

$ xclip -o
prints content of xclip

$ xclip -o | xclip -selection clipboard -i
puts content of xclip to system clipboard

$ pwd | tee output-file
puts output of pwd to output-file

$ readlink -f index.html
give full file path

xclip @ https://github.com/astrand/xclip
pwd | xclip
xclip -o
xclip /path/to/file
mozilla `xclip -o`
xclip-copyfile file1
xclip-pastefile
xclip -o | xclip -sel clip (edited)

