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

- combine images, pdfs, etc to pdf
convert in1.jpg in2.jpg in3.pdf out.pdf

## attachments
- pdftk  mydoc.pdf  unpack_files
- pdftk  mydoc.pdf  input_pw  <password>  unpack_files


## reduce pdf size
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf

-dPDFSETTINGS Option	        Description
  -dPDFSETTINGS=/screen	        Has a lower quality and smaller size. (72 dpi)
  -dPDFSETTINGS=/ebook	        Has a better quality, but has a slightly larger size (150 dpi)
  -dPDFSETTINGS=/prepress	Output is of a higher size and quality (300 dpi)
  -dPDFSETTINGS=/printer	Output is of a printer type quality (300 dpi)
  -dPDFSETTINGS=/default	Selects the output which is useful for multiple purposes. Can cause large PDFS.

## remove password
qpdf --password='123456' --decrypt secure.pdf output.pdf
