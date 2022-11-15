#!/usr/bin/env sh

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
mkdir -p $HOME/.config

ln -sf $DOTFILES/config/zsh/zshrc     $HOME/.zshrc
ln -sf $DOTFILES/config/zsh/p10k.zsh  $HOME/.p10k.zsh
rm -rf $HOME/.config/alacritty
rm -rf $HOME/.config/nvim
ln -sf $DOTFILES/config/nvim/          $HOME/.config/
ln -sf $DOTFILES/config/alacritty/     $HOME/.config/

