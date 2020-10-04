# ncmpcpp

“MPD (music player daemon) is an audio player that has a server-client architecture. It plays audio files, organizes playlists and maintains a music database all while using very few resources. In order to interface with it, a separate client is needed.”

ncmpcpp is an mpd client.

- sudo pacman -S mpd
- mkdir -p ~/.config/mpd/playlists/
- create ~/.config/mpd/mpd.conf
- copy from /usr/share/doc/mpd/mpdconf.example
- set music directory, create required files
- mpd
- systemctl enable mpd.service

## NCurses Music Player Client (Plus Plus)
- sudo pacman -S ncmpcpp
- mkdir -p ~/.config/ncmpcpp
- cp /usr/share/doc/ncmpcpp/config ~/.config/ncmpcpp/config
- ncmpcpp

## ncmpcpp shortcuts
- F1 : help
- u : update database
- p : pause/play
- f/b : seek forward/backward in playing song
- > / < : next previous track
- r : toggle repeat mode
- z : toggle random mode
- <space> : change visualizer

## playlist
a: add item to playlist
S: save playlist
c : clear playlist
Delete : delete selected item from playlist


## mpc 
command line for mpd

Android client for MDP
* MPDroid

## sources 
https://wiki.archlinux.org/index.php/Music_Player_Daemon
https://wiki.archlinux.org/index.php/ncmpcpp
https://www.musicpd.org/clients/

