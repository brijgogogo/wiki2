# tor

- install tor
sudo pacman -S tor


- using chrome with tor
chromium --proxy-server="socks5://127.0.0.1:9050" --host-resolver-rules="MAP * 0.0.0.0 , EXCLUDE myproxy"

## check tor
https://check.torproject.org/

## sources
https://tor.stackexchange.com/questions/13021/how-to-use-tor-with-google-chrome
https://wiki.archlinux.org/index.php/tor

