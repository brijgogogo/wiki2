# keyboard
The default console keymap is US

view current keyboard configurations
$ localectl status

search uk keymap
$ localectl list-keymaps | grep -i uk

set a keymap (here uk) for current session (better test before setting)
$ loadkeys uk

set persistant keymap in etc/vconsole.conf (read by systemd on startup)
KEYMAP=uk
(deault KEYMAP is us)

## sources
https://wiki.archlinux.org/index.php/Xorg/Keyboard_configuration
https://wiki.archlinux.org/index.php/Linux_console/Keyboard_configuration
https://wiki.archlinux.org/index.php/Installation_guide#Set_the_keyboard_layout
