#!/bin/sh
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/bundle ~/.vim
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/zsh-syntax-highlighting ~/
chsh -s /bin/zsh
git submodule init
git submodule update
