# Install all configs
# except the script
files=$(ls | sed -En '/[^(.sh)]$/p')

loc=$(pwd)
for file in $files; do
	echo "--------------------"
	echo "Installing $file"
	echo "--------------------"
	if [ -f ~/".$file" ]; then
		echo "Config .$file already exists!"
		echo "Backup :   .$file ---> .$file.bck"
		mv ~/".$file" ~/".$file.bck"
		ln -s "$loc/$file" ~/".$file"
		if [ $? -eq 0 ]; then
			echo "Success!"
		fi
	else
		ln -s "$loc/$file" ~/".$file"
		if [ $? -eq 0 ]; then
			echo "Success!"
		fi
	fi
done
echo "--------------------"
