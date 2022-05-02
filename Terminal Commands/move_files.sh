# Move files from one folder to the respective folders.

for files in `ls *.txt`;
do
	folderName=`echo $files | awk -F. '{print $1}'`;
	if [ -d $folderName ];
	then
		echo "Removing folder $folderName if it is already exists"
		rm -R $folderName;
	fi
	mkdir $folderName;
	echo "Moving $files to $folderName"
	mv $files $folderName;
	echo "moved $files to $folderName"
done
