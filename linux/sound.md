# linux sound
## ALSA (Advanced Linux Sound Architecture)
It supports multiple sound cards, each of which may have multiple inputs and outputs. It also provides support for hardware mixing, where the hardware supports it, and software mixing where it does not.

ALSA is a combination of kernel code and user-space applications. It also provides an API so that other programs can control it directly, like the mixer control panels included with desktop environments.

## PulseAudio
PulseAudio is a newer audio framework, but it is not a replacement for ALSA. Instead, it sits on top of the kernel audio system, providing a greater amount of conrol. It works as a server, accepting iput from sources and forwarding it to sinks (output hardware or capture software). In many cases, the sink is ALSA, and the source can be an ALSA driver, too, for applications tht don't directly support PulseAudio.

## Music Players
- MDP (Music Player Daemon) : database of music collection
plays tracks in response to commands from a client program
Lightweight
Spotify and SoundCloud playlists are supported.
Plugins are available.

Graphical clients: Xfmpc for XFCE/GImmix

- ncmpcpp
http://bit.ly/Ncmpcpp
- Cmus
- Herrie
FFmeg: media conversion
mpg123 : mpe media player

