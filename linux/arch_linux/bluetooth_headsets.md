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
- failed to start discovery: org.bluez.Error.NotReady
$ bluetoothctl power on

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

24:EE:9A:9C:60:7F
84:E0:F4:02:D0:88  (AP)
4C:24:98:5F:9F:80 AnnePro2 P2
