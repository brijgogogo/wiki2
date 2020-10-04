# bluetooth headsets
- pacman -S bluez bluez-utils
- systemctl start bluetooth.service : start bluetooth

$ bluetoothctl  : start bluetoothctl
- help : list commands
- list
- select <MAC_address>
- power on
- scan on
- devices
- pair <mac_address>
- connect <mac_address>
- disconnect <mac_address>

## Troubleshooting
- Failed to set power on: org.bluez.Error.Blocked
$ rfkill unblock bluetooth

- If you are getting a connection error org.bluez.Error.Failed retry by killing existing PulseAudio daemon first:
$ pulseaudio -k

## audio devices
$ pacman -S pulseaudio-alsa
$ pulseaudio-bluetooth


## sources
https://wiki.archlinux.org/index.php/Bluetooth
https://wiki.archlinux.org/index.php/Bluetooth_headset

