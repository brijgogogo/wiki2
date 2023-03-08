# Printer

## CUPS
CUPS uses Internet Printing Protocol (IPP) to support printing to local and network printers.

PPD file: Postscript Printer Description file


- pacman -S cups cups-pdf
- systemctl enable cups.service
- systemctl start cups.service

Cannon Driver: cnijfilter2
- paru cnijfilter2

Reboot after installing cups and driver. Then add printer from cups web interface.

GUI
1. cups web interface is available at http://localhost:631/
  (admin credentials: root username and pwd)
2. pacman -S system-config-printer (not needed)

