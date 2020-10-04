# curl

The curl tool lets us fetch a given URL from the command-line

- curl http://some.url --output some.file
  --output (or -o) flag denotes the filename of the downloaded URL
- curl http://some.url --output some.file --silent
  --silent (or -s) doesn't show download progress
- curl http://some.url
If you curl without any options except for the URL, the content of the URL (whether it's a webpage, or a binary file, such as an image or a zip file) will be printed out to screen.
- curl -s http://example.com | wc -l
count number of lines


## curl options
-i : print response headers


## online tools
* curl wttr.in
* curl wttr.in/Delhi
* curl ifconfig.co
* curl ifconfig.co/country
* curl ifconfig.co/city
* http://tinyurl.com/api-create.php?url=http://www.google.com
* curl getnews.tech
* curl getnew.tech/trump
* curl getnews.tech/cricket+world+cup
* curl 'dict://dict.org/d:operating system'
* curl cheat.sh
* curl cheat.sh/git
* curl rate.sx
* curl parrot.live
* curl https://ipapi.co/timezone


curl -s -X GET https://openexchangerates.org/api/latest.json?app_id=<app_id> | grep INR




## sources
http://www.compciv.org/recipes/cli/downloading-with-curl/

