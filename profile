alias gst='git status'
alias gba='git branch -a'

source ~/.git-completion.bash
source ~/.git-prompt.sh
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
