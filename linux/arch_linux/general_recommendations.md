# general recommendations

- [enable_sudo](./sudo.md)
- [gui_setup](./gui_setup.md)


# Make and install `yay`
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si


# Browsers
- firefox with noto-fonts
- chromium
- brave

# fonts
- noto-fonts
- noto-fonts-emoji
- ttf-google-fonts-typewolf	40+ Google fonts
- ttf-ms-fonts	Fonts from microsoft (arial, courier, etc)
- ttf-mac-fonts	Fonts from macOS (lucida grande, etc)
- otf-san-francisco	Fonts from iOS
- ttf-font-awesome

# utils
- wget
- xclip
- xsel
- dunst
- unclutter
- redshift
- nitrogen
- gotop

# File Manager
- nnn

# tools
- Python, python-pip
- node (using nvm)
- fzf
- ripgrep
- flameshot
- buku
- vidir

# audio
- alsa-utils
- pulseaudio
- pavucontrol

# video
- mpv

# images
- feh

# compression utils
- p7zip unrar zip unzip

# time
enable Network Time Protocol (NTP) to allow the system to update the time via the network
- timedatectl set-ntp true

https://wiki.archlinux.org/index.php/Network_Time_Protocol_daemon

# Books
- Calibre (depends on Python)
- zathura zathura-djvu zathura-pdf-mupdf zathura-ps
- set default apps
 xdg-mime  default org.pwmt.zathura-pdf-mupdf.desktop application/pdf
 xdg-mime default org.pwmt.zathura-pdf-mupdf.desktop application/epub+zip
(disable Calibre as default reader from Preferences)

# enable microcode udpates
https://wiki.archlinux.org/index.php/Microcode

- [brightness](./brightness.md)
- [sound](./sound.md)
- [battery](./battery.md)


= sources =
https://wiki.archlinux.org/index.php/General_recommendations
https://wiki.archlinux.org/index.php/Category:Eye_candy
