# nginx
* functionality can be added through dynamic modules
* can be used as proxy servers
* event-based processing for large numbers of connections
* Configuration: C-like syntax
* Centralized configuration (at root only)
* Dynamic content requires external processing
* Static content is more efficient
* Native caching and load balancing capabilities

## installation
* pacman -S nginx-mainline
* nginx -v

## start,stop,status
* systemctl start nginx.service
The default page served at http://127.0.0.1 is /usr/share/nginx/html/index.html.
* systemctl status nginx
* systemctl stop nginx.service
* systemctl is-active nginx.service
* systemctl reload nginx.service
reloads the service so as to apply any configuration changes, etc. Nginx holds the configuration in-memory.
This can be done using start and stop, but in that case the service will be stopped and then started.


## nginx cli
* nginx -h
see options available in nginx cli
* nginx -t
tests if the configuration is good
* nginx -T
test configuraiton and show on screen

== nginx files ==
* /etc/nginx
contains configuration of nginx
/etc/nginx/nginx.conf - main configuration file
* /var/log/nginx
nginx log files
* /usr/share/nginx/html
default location for documents

* [configuration](configuration.md)


## sources
https://wiki.archlinux.org/index.php/Nginx
http://wiki.nginx.org/Configuration
http://nginx.org/en/docs/beginners_guide.html
http://nginx.org/en/docs/

