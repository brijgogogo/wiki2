# general recommendations

## pacman config (/etc/pacman.conf)
1. uncomment `Color` for colorful pacman
2. add `ILoveCandy` for candy progress bar
3. add `ParallelDownloads = 5` to enable parallel downloads (pacman 6+)

- [enable_sudo](./sudo.md)
- [gui_setup](./gui_setup.md)

## zsh
- pacman -S zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting zsh-theme-powerlevel10k
- change shell:
  chsh -s /bin/zsh

## Terminal
- alacritty, alacritty-themes (paru)
- bash-completion
- fd
- exa
- broot
- bat
- prettyping
- xorg-xmessage

## Install paru (intead of yay)
https://github.com/Morganamilo/paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

# Make and install `yay`
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si


# Browsers
- firefox with noto-fonts
- chromium
- brave

# fonts
- font-manager (yay)
- noto-fonts
- noto-fonts-emoji
- ttf-google-fonts-typewolf	40+ Google fonts
- ttf-ms-fonts	Fonts from microsoft (arial, courier, etc)
- ttf-mac-fonts	Fonts from macOS (lucida grande, etc)
- otf-san-francisco	Fonts from iOS
- otf-font-awesome-5-free (free, brands)
- noto-fonts-complete

# utils
- wget
- xclip
- xsel
- dunst, libnotify    (required for notifications)
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
- youtube-dl
- vlc (it installs many codecs)

:
http://demo.nimius.net/video_test/
Audio test:
https://hpr.dogphilosophy.net/test/

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

- [brightness](./brightness.md) (xbacklight)
- [sound](./sound.md)
- [battery](./battery.md)


= sources =
https://wiki.archlinux.org/index.php/General_recommendations
https://wiki.archlinux.org/index.php/Category:Eye_candy
