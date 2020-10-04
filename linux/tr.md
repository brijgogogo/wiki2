# tr - translate characters in a text stream

- echo Hello world | tr 'o' 'a'
- echo Hello world | tr 'lo' 'xa'
- txt="Hello,
world"
echo $txt | tr '[:space:]' ' '
Normalize all whitespace characters (including newlines) to spaces

