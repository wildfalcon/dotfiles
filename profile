
alias gst='git status'

source ~/.git-completion.bash
source ~/.git-prompt.sh
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
