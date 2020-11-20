#!/usr/bin/env bash

sh ~/dotfiles/install/software.sh

echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "- STARTING CONFIG SETUP                                       -"
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"

echo "i3 settings"

if [ -f ~/.i3/config ]; then
  mv ~/.i3/config ~/.i3/config-pre-dotfiles-bak
fi
ln -fs ~/dotfiles/config/.i3/config ~/.i3/config

echo "zhsrc settings"

if [ -f ~/.zshrc ]; then
  mv ~/.zshrc ~/.zshrc-pre-dotfiles-bak
fi
ln -fs ~/dotfiles/config/.zshrc ~/.zshrc

echo ".Xresources settings"

if [ -f ~/.Xresources ]; then
  mv ~/.Xresources ~/.Xresources-pre-dotfiles-bak
fi
ln -fs ~/dotfiles/config/.Xresources ~/.Xresources
