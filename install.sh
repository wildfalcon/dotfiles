#!/bin/bash

echo "Creating Symlinks..."
ln -svf ".dotfiles/bash_profile" ~/.bash_profile
ln -svf ".dotfiles/basbrc" ~/.bashrc
ln -svf ".dotfiles/git-completion.bash" ~/.git-completion.bash
ln -svf ".dotfiles/git-prompt.sh" ~/.git-prompt.sh
ln -svf ".dotfiles/gitconfig" ~/.gitconfig
ln -svf ".dotfiles/profile" ~/.profile
echo "...done!"
