#!/bin/bash

echo "Creating Symlinks..."
ln -svf ".dotfiles/bash_profile" ~/.bash_profile
ln -svf ".dotfiles/zshrc" ~/.zshrc
ln -svf ".dotfiles/git-completion.bash" ~/.git-completion.bash
ln -svf ".dotfiles/git-prompt.sh" ~/.git-prompt.sh
ln -svf ".dotfiles/gitconfig" ~/.gitconfig
ln -svf ".dotfiles/profile" ~/.profile
ln -svf ".dotfiles/tmux.conf" ~/.tmux.conf
ln -svf ".dotfiles/vimrc" ~/.vimrc
ln -svf ".dotfiles/vim" ~/.vim
ln -svf ".dotfiles/zsh" ~/.zsh
ln -svf $HOME/.dotfiles/vscode.settings.json $HOME/Library/"Application Support"/Code/User/settings.json
echo "...done!"
