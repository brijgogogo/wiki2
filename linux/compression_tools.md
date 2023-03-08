# Compression Tools

## p7zip
Command line port of 7zip
- pacman -S p7zip
- 7z e <archive> : extract to current directory without using directory names
- 7z x <archive> : archive with full file path
- 7z x <archive> -o<output_directory>
- 7z x file.7z : extract parted file

## zip/unzip
- sudo pacman -Ss zip
- zip –r filename.zip directory_name
zip directory
- zip zipfile.zip file1 file2 file3
compress files
- zip -e password.zip file1 file2
password protected archive
- vim file.zip
browse zip archive
- zip -T file.zip
test if zip file is ok

- unzip file.zip -d destination_folder
extract
- unzip -l file.zip
view files inside archive
- unzip file.zip file2
extract specific file

## split & join
- split file into 5MB sizes
  split -b 5M splitFilePrefix --verbose
- join the splitted files
  cat splitFilePrefix* > joined_file


## rar/unrar
- unrar x file.rar
- unrar l file.rar
- unrar e file.rar
- unrar t file.rar
- rar a file.rar folder
- rar r file.rar
- rar u file.rar newFile.txt
- rar a -p file.rar



Extract Multiple zip files to separate folder
for f in *.zip; do unzip -d "${f%*.zip}" "$f"; done

## tar
- tar tvf tarball.tar.bz2 (lists contens of a tarball)
- tar xf tarball.tar.xz (unpacks in current directory)
-z : Uncompress the resulting archive with gzip command.
-x : Extract to disk from the archive.
-v : Produce verbose output i.e. show progress and file names while extracting files.
-f data.tar.gz : Read the archive from the specified file called data.tar.gz.

(tarballs = archives)

- tar -zxvf fileName.tar.gz
-z : Uncompress the resulting archive with gzip command.
-x : Extract to disk from the archive.
-v : Produce verbose output i.e. show progress and file names while extracting files.
-f data.tar.gz : Read the archive from the specified file called data.tar.gz.

- tar -zxvf data.tar.gz -C /data/projects
By defaults files will be extracted into the current directory.
To change the directory use -C option. In this example, extract files in /data/projects directory.

- tar -tzvf data.tar.gz
To view a detailed table of contents (list all files) for this archive.

- tar -zcvf newFile.tar.gz folderToCompress
(use gzip format)
- tar -jcvf newFile.tar.bz2 folderToCompress
(use bzip2)
- tar -cvf newTarFile.tar folder/
(creates a archive file for a folder)
- tar -xvf archiveFile.tar
(to unarchive tar file)
- tar -tvf archiveFile.tar
(view contents)
- tar -rvf archiveFile.tar docToAdd.txt
(add another file to existing tar file)


## gzip / bzip2
GZIP (faster)
BZIP2 (takes less space)

- gzip file1 file2 file3
(compresses files)
- gzip -d file1.gz (or)
- gunzip file.gz
(uncompresses files)

- bzip2 file1 file2 file3
(compresses file)
- bunzip2 -dk file.bz2
(d: uncompresses file, k: preserve original archive)


