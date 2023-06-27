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

		# If there is a backup, we do nothing
		if [ -f ~/".$file.bck" ]; then
			echo "If you want to install $file, Please rename .$file.bck"
		else
			echo "Backup :   .$file ---> .$file.bck"
			mv ~/".$file" ~/".$file.bck"
			ln -s "$loc/$file" ~/".$file"
			if [ $? -eq 0 ]; then
				echo "Success!"
			fi
		fi
	else
		ln -s "$loc/$file" ~/".$file"
		if [ $? -eq 0 ]; then
			echo "Success!"
		fi
	fi
done
echo "--------------------"
