# notifications

## packages:
- libnotify

## notification server
- [dunst](../dunst.md)

## notification example
- bash
notify-send 'Hello world!' 'This is an example notification.' --icon=dialog-information
notify-send "Title" "NOW" -i /path/to/icon.png
notify-send "title" "text" --urgency critical
urgency: low, normal, critical

## sources
https://wiki.archlinux.org/index.php/Desktop_notifications

