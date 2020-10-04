# UrlScan

Urlscan can extract URLs and email addresses from emails or any text file.

urlscan [-n, --no-browser] [-c, --compact] [-d, --dedupe] <file>

- Calling with no flags will start the curses browser.
- '-n' : output a list of URLs/email addressess to stdout
- '-c' : removes the context from around the URLs in the curses browser
- '-d' : removes duplicate URLs.
- Files can also be piped to urlscan using normal shell pipe mechanisms: cat <something> | urlscan or urlscan < <something>

