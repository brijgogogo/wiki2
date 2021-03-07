# pdf tools

- PDFUNITE - Merge PDF files
Install Poppler
  $ pdfunite input1.pdf input2.pdf output.pdf

- Merge PDF files using Ghost Script
gs -q -sPAPERSIZE=a4 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=logo-concepts.pdf logo-concepts-1.pdf logo-concepts-2.pdf logo-concepts-3.pdf

- merge pdf files
gs \
  -o merged.pdf \
  -sDEVICE=pdfwrite \
  -dPDFSETTINGS=/prepress \
   input_1.pdf \
   input_2.pdf \
   input_3.eps \
   input_4.ps \
   input_5.pdf

- Master PDF Editor

- convert png to pdf (imagemagick)
convert file.png to file.pdf

## attachments
- pdftk  mydoc.pdf  unpack_files
- pdftk  mydoc.pdf  input_pw  <password>  unpack_files


