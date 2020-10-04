# urxvt : rxvt-unicode
:urxvt:

Customizable via config (~/.Xresources or ~/.Xdefaults)
Very lightweight
Unicode support, transparency (pseudo, true), support for Xft fonts.
It supports Perl extensions, which can provide clickable urls, tabbed interface, vi like movement

## installation
- pacman -S rxvt-unicode

## useful commands
- urxvt --help
prints available rxvt resources to standard error
- urxvt --help 2>&1 | grep font
- xrdb ~/.Xresources
to apply changes in .Xresources

## shortcuts
- Ctrl+Alt+C : copy (CLIPBOARD selection)
- Ctrl+Alt+V : paste (CLIPBOARD selection)
- Shift+Ins: paste from PRIMARY
- Selected text is automatically copied to PRIMARY selection.
- Ctrl+Z : pause program
- fg : resume program
- cd - : move back to previous directory

## Extensions
# Keyboard-select
- M-Esc : enter vim mode, you can move using lkjh
- Esc: to exit

## url-select
- Alt+u : enter url selection mode
- j, k : select next/prev urls
- o: open
- y: yank
- Esc: cancel url selection mode

## Change font size on fly ==
- yaourt urxvt-resize-font-git
C-S-+ : to inrease font-size
C-- : to decrease
C-= : to reset
C-? (hold) : to see current size

## URVTD
run urxvt daemon for faster urxvt
http://510x.se/notes/posts/Configuring_and_using_rxvt-unicode/

## Resources
https://wiki.archlinux.org/index.php/Rxvt-unicode/Tips_and_tricks
https://wiki.archlinux.org/index.php/rxvt-unicode
http://pod.tst.eu/http://cvs.schmorp.de/rxvt-unicode/doc/rxvt.1.pod
https://github.com/muennich/urxvt-perls

