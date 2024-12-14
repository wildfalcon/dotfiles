

# Github setup
# alias gst='git status'
# alias gba='git branch -a'
# alias gl='git log --graph --decorate --format=format:"%C(white) %d %Cblue %h %Cred %an %cr %Cgreen %s"'

# Set up my personal ruby config
# Rb env setup
#export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
# Set up ruby
export RUBYOPT='-W:no-deprecated -W:no-experimental' # No warnings
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"



# Fix NSCFConstantString initialize error
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Set up homebrew completions
# if type brew &>/dev/null; then
#   HOMEBREW_PREFIX="$(brew --prefix)"
#   if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
#     source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
#   else
#     for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
#       [[ -r "$COMPLETION" ]] && source "$COMPLETION"
#     done
#   fi
# fi

# Set up custom paths
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.dotfiles/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

# set up Anaconda 
export PATH="/opt/homebrew/anaconda3/bin:$PATH"

# Set up editor
export EDITOR="vim"

# Load asdf
. "$HOME/.asdf/asdf.sh"


# Set up prompts
#source ~/.git-completion.bash
#source ~/.git-prompt.sh
#export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
# PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '
# autoload -Uz vcs_info
# precmd_vcs_info() { vcs_info }
# precmd_functions+=( precmd_vcs_info )
# setopt prompt_subst
# RPROMPT=\$vcs_info_msg_0_
# zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
# zstyle ':vcs_info:*' enable git


# # Load completions
# zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
# fpath=(~/.zsh $fpath)
# fpath=(${ASDF_DIR}/completions $fpath) # load ADSF competions

# autoload -Uz compinit && compinit

## NOW confiure ZSH:
ZINIT_HOME=$HOME/.local/share/zinit/zinit.git

# Download zinit if not already installed
if [ ! -d $ZINIT_HOME ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git $ZINIT_HOME
fi

source "$ZINIT_HOME/zinit.zsh"

# Load oh my posh theme
eval "$(oh-my-posh init zsh --config $HOME/.dotfiles/ohmyposh/catppuccin.toml)"


# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets to allow OMZ plugins
zinit snippet OMZP::git
zinit snippet OMZP::command-not-found

# Load autocompletions
autoload -U compinit && compinit

zinit cdreplay -q

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls -G $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls -G $realpath'
# zstyle ':fzf-tab:complete:__zoxide_cd:*' fzf-preview 'ls -G $realpath'

# Keybindings
bindkey -e # EMACS' mode 
bindkey '^[[A' history-search-backward #up and down arrows to search history
bindkey '^[[B' history-search-forward

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE 
HISTDUPE=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# ls aliases
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -lA'
alias c='clear'

# Shell integrations
eval "$(fzf --zsh)" # fuzzy finder
# eval "$(zoxide init --cmd cd zsh)"  # zoxide
eval "$(zoxide init --cmd cd zsh)"  # zoxide
