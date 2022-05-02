# Check if a folder exists or not. If not present create it

read -p "Enter a folder name : " folderName

if [ -d $folderName ]
then
	echo "folder already exists"
else
	mkdir $folderName
	echo "Created a new directory "$folderName" successfully..."
fi
