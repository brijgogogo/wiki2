# wget
used for retrieving content from web servers
supports http, https, ftp
supports recursive downloads (from HTML file or web directory)

- wget www.google.com/somefile.txt
download the file specified by the [URL] to the current directory
- wget -O mydir/example.txt https://www.linode.com/docs/assets/695-wget-example.txt
specify location and name of the file where wget writes the downloaded content
- wget -q -O - https://www.linode.com/docs/assets/695-wget-example.txt
If you specify the file name as - as in wget -O -, wget will output the downloaded file to the terminal. Add the -q flag to suppress the status output.

- wget -S https://www.linode.com/docs/assets/695-wget-example.txt
To view the HTTP header information attached to the resource, add -q to suppress output


- wget --http-user=[USERNAME] --http-password=[PASSWORD] [URL]
http authentication


- wget -r -m www.ingrahaminstitute.com
  -r = -recursive
  -m = -mirror

- wget -e robots=off www.url.com
by default wget considers robots file

- wget -nc  www.url.com
  -nc = --no-clobber to skip downloads that would download to existing files

- wget -np www.url.com
  -np = --no-parent
  to stop wget from ascending into a parent directory

- wget --accept jpg,gif,bmp www.url.com
download only certain file types
Similarly you can use the --reject command to ignore specific file-types

- --level=0
dictates the depth of the directories you’d like to download, in this case
its set to 0, meaning that there is no pre-determined depth to download (aka
it will recursively download everything).

- FOR g IN dir1 dir2 dir3
DO wget -e robots=off -r --level=0 -nc -np -accept tx  www.url.com/$g
done
script to download txt files from specific directory in a url

- wget -i file_with_list_of_urls.txt
- wget -e robots=off -r -A "*.zip,*.pdf" "https://path.com/to/page/with/links"
download files with specific extensions, from a web url

- use -b opton to download in background, output will be return to wget-log file

