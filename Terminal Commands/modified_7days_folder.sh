# Archive the files from/var/log folder which have modified 7 days ago 
# and move it to your backup folder

for files in `find /var/log -mtime +7 -type f`
do
	cp $files /var/log/backup/
	echo "Moving $files to backup folder"

done
