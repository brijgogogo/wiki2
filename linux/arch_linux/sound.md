# sound 

- [alsa](./alsa.md)

they need pulseaudio
install pavucontrol to manage pulseaudio

== for sound problems ==
* alsactl init
* alsactl restore

== querying sound devices ==
* lspci -vnn | grep -A 1 -i audio
* cat /proc/asound/cards
* aplay -l
* pacmd list-cards
* speaker-test -Dhw:0,3 -c2
here 0 is card 0 and 3 is Device 3 (listed by aplay -l)

if sound works on a card set it per user in ~/.asoundrc
defaults.pcm.device = 0
defaults.pcm.card = 1

https://bbs.archlinux.org/viewtopic.php?id=231316


== microphone ==
List microphone devices
$ arecord --list-devices

$ arecord -f dat -d 10 -r 16000 --device="hw:1,0" /tmp/test-mic.wav
Record 10 second audio using Card 1 and Device 0
$ aplay /tmp/test-mic.wav



= sources =
https://wiki.archlinux.org/index.php/Sound_system
https://wiki.archlinux.org/index.php/Advanced_Linux_Sound_Architecture
https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture#Concepts
