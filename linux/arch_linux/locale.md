# locale

$ locale
display current locale

# how to set a locale
1. supported locales are uncommented in /etc/locale.gen
   uncomment a locale like en_US.UTF-8 or en_IN
2. generates the locale
   $ locale-gen
3. current locale is set in /etc/locale.conf
    LANG=en-US.UTF-8

On reboot, variable $LANG contains current locale (LANG=en_US.UTF-8)


## sources
https://wiki.archlinux.org/index.php/Locale
https://wiki.archlinux.org/index.php/Installation_guide
