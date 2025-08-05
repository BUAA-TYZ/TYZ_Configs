# Install all configs
# except the script

if ! [ -e /usr/bin/zsh ]; then
	echo "--------------------"
	echo "Installing zsh as the default shell"
	echo "--------------------"
	sudo apt install -y zsh
fi
if [ -e /usr/bin/zsh ]; then
	if ! [ -d "$HOME/.oh-my-zsh" ]; then
		echo "--------------------"
		echo "Installing oh-my-zsh to beautify zsh shell"
		echo "--------------------"	
		sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
	fi
fi
if [ -e /usr/bin/zsh ]; then
	if [ -d "$HOME/.oh-my-zsh" ]; then
		echo "--------------------"
		echo "Installing needed zsh plugins"
		echo "--------------------"		
		git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
		git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
        curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
	fi
fi

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
				echo "Install $file Success!"
			fi
		fi
	else
		ln -s "$loc/$file" ~/".$file"
		if [ $? -eq 0 ]; then
			echo "Install $file Success!"
		fi
	fi
done
echo "--------------------"
echo "All Have Done. Now input: source ~/.zshrc mannully"
