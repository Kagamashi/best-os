
tar                                     # Archive files
gzip                                    # Compress files using gzip
gunzip                                  # Decompress gzip files
bzip2                                   # Compress files using bzip2
zip                                     # Create ZIP archives
unzip                                   # Extract ZIP archives

# tar – Archive files
# Packs files and directories into a single .tar file (also called tarball)
# Tar Archive also stores permission and ownership informations about files and directories

z --gzip
j --bzip2
J --xz

tar -cvf archive.tar /path/to/directory     # create a tarball (archive) from a directory
tar -rf archive.tar file2                   # add file to archived directory
tar -tf archive.tar.gz                      # view contents of tar file
tar -xvf archive.tar                        # extract files from a tarball
tar -czvf archive.tar.gz /path/to/directory # create a compressed tarball using gzip
tar -xzvf archive.tar.gz                    # extract a compressed tarball
tar xf archive.tar -C /tmp                  # extract in another directory

tar X<(ls | file -f - | grep -i MPEG | cut -d: -f 1) -c -f file.tar * # exclude MPEG file from content of file.tar
sudo tar --extract --file archive.tar --directory /tmp/               # to ensure all permission/ownership informations get restored

gzip file.txt                             # compress file.txt to file.txt.gz
gzip -d file.txt.gz                       # decompress file.txt.gz to file.txt
gunzip file1.gz

bzip2 file.txt                            # compress file.txt to file.txt.bz2
bzip2 -d file.txt.bz2                     # decompress file.txt.bz2 to file.txt
bunzip file2.bz2

zip archive.zip file1.txt file2.txt      # create a ZIP archive containing file1.txt and file2.txt
unzip archive.zip                        # extract the contents of archive.zip


## BACKUP
dd if=/dev/sda of=/system_images/sda.img # backup a device (must be unmounted)
dd if=/system_images/sda.img of=/dev/sda # restore device

rsync   # keep content of two directories synchronized
rsync -av source dest                                       # synchronize source with dest -a archive, provide a series of default option
rsync -avz /tmp user@123.123.123.123:/dest                  # synchronize tmp with dest that it's contained in remote machine with IP 123.123.123.123 (-z means code will be compressed during transfer)
rsync -avzhe ssh source root@remote_host:/remote_directory/ # synchronize source with remote_directory using ssh
