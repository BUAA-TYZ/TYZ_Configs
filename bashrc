# ------------------
# History Settings
# ------------------

HISTSIZE=3000
HISTFILESIZE=4000


# ------------------
# Alias Settings
# ------------------

alias ls='ls --color=auto'
alias dir='dir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

source /etc/profile

alias clion='nohup /home/tyz/Downloads/clion-2022.3.3/bin/clion.sh>/dev/null 2>&1 &'
alias goland='nohup goland.sh>/dev/null 2>&1 &'
export LC_ALL=C

# export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
# export JRE_HOME=${JAVA_HOME}/jre
# export GOROOT=/usr/local/go
# export GOPATH=$HOME/GolandProjects
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:$JAVA_HOME/bin
# export C_INCLUDE_PATH=

# change the forme
export PS1='\u@\h:\W\$ '

# enable core dump
ulimit -c unlimited

