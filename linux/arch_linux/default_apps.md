# default applications in Arch

applications use xdg-open, which chooses which application to open a file with depending on the file's mimetype.


An application foo normally comes with a file foo.desktop, located in /usr/share/applications, which xdg-open can use to open various kinds of files.


You can query and change your default settings for xdg-open by using xdg-mime. Example:
$ xdg-mime query default application/pdf
libreoffice.desktop
$ xdg-mime default mupdf.desktop application/pdf
$ xdg-mime query default application/pdf
mupdf.desktop

- xdg-mime query filetype test.svg
find mime-type of a file


location *.desktop files
/usr/share/applications


## mime_types
- magnet url
  x-scheme-handler/magnet

## Useful defaults
xdg-mime default org.pwmt.zathura.desktop application/pdf

## read 

## sources
https://wiki.archlinux.org/index.php/Desktop_entries
https://wiki.archlinux.org/index.php/Default_applications
https://wiki.archlinux.org/index.php/Xdg-utils#xdg-open
https://www.reddit.com/r/linuxquestions/comments/5z3n81/default_applications_in_arch_linux/


