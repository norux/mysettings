
export TERM="xterm-color"
export CLICOLOR=1
export LSCOLORS=ExGxCxDxBxegedabagacad

alias ls="echo -en '\033[1;33m' && pwd | sed 's/\/Users\/heebum/~/' && echo -en '\033[0m' && ls -G"
alias ll='ls -alF'
alias l='ls -CF'

alias grep='grep --color'
alias fgrep='fgrep --color'
alias egrep='egrep --color'

# claer aliase
alias c='clear'

# SVN EDITOR
export SVN_EDITOR=vim

PS1='\u:\W \$ '

source ~/.myrc
