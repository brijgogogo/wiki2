# nginx configuration

* format
directive <value>
block_directive {
  directive <value>;
  directive <value>;
  # comment
}


* setting up server using basic configuration
server {
  listen 80; # port to listen at
  root /path/to/website;
}

* setting up virtual hosts
server {
  listen 80 default_server; # use this configuration if no matching site is found
  server_name my_website.local www.my_website.local
  root /path/to/my_website.local;
  index index.html second_priority_file.php; # default file
}

