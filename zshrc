export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# export http_proxy="http://localhost:7890/"
# export https_proxy="http://localhost:7890/"
# export no_proxy="localhost,127.0.0.1,::1,10.96.0.0/12,10.244.0.0/16,192.168.136.0/24,.tyz.edu.cn"

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

eval "$(zoxide init zsh)"
