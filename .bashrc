umask 022
export LANG=ja_JP.UTF-8
export EDITOR=vim
export PAGER=lv
export LV="-c -Ou8"
export MYHOME=$HOME/users/yoshie
export HISTFILE=$MYHOME/.bash_history
export HISTSIZE=40000
export HISTCONTROL=ignoreboth
export PATH="$MYHOME/bin:$PATH"
#export PATH="/home/game/users/yoshie/local/bin/:$PATH"

unalias -a
alias ls='/bin/ls -F --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias vim="$MYHOME/local/bin/vim -u $MYHOME/.vimrc"
alias vi=vim
alias tmux="tmux -f $MYHOME/.tmux.conf"

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
