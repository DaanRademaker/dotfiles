#!/usr/bin/env bash

#sh ~/dotfiles/install/software.sh

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

echo "spotifyd settings"
if [ -f ~/.config/spotifyd/spotifyd.conf ]; then
  mv ~/.config/spotifyd/spotifyd.conf ~/.config/spotifyd/spotifyd.conf-pre-dotfiles-bak
else
  mkdir ~/.config/spotifyd &&
  touch ~/.config/spotifyd/spotifyd.conf
fi
ln -fs ~/dotfiles/config/.config/spotifyd/spotifyd.conf ~/.config/spotifyd/spotifyd.conf

echo ".dconf settings"

if [ -f ~/.dmenurc ]; then
  mv ~/.dmenurc ~/.dmenurc-pre-dotfiles-bak
fi
ln -fs ~/dotfiles/config/.dmenurc ~/.dmenurc

echo ".xinitrc settings"

if [ -f ~/.xinitrc ]; then
  mv ~/.xinitrc ~/.xinitrc-pre-dotfiles-bak
fi
ln -fs ~/dotfiles/config/.xinitrc ~/.xinitrc

echo "set compton"

if [ -f ~/.config/compton.conf ]; then
  mv ~/.config/compton.conf ~/.config/compton.conf-pre-dotfiles-bak
fi
ln -fs ~/dotfiles/config/.config/compton.conf ~/.config/compton.conf

echo "polybar config"

mkdir -p $HOME/.config/polybar

touch $HOME/.config/polybar/config

if [ -f ~/.config/polybar/config ]; then
  mv ~/.config/polybar/config ~/.config/polybar/config-pre-dotfiles-bak
fi
ln -fs ~/dotfiles/config/.config/polybar/config ~/.config/polybar/config

echo "polybar startup script"

touch $HOME/.config/polybar/launch.sh

if [ -f ~/.config/polybar/launch.sh ]; then
  mv ~/.config/polybar/launch.sh ~/.config/polybar/launch.sh-pre-dotfiles-bak
fi
ln -fs ~/dotfiles/config/.config/polybar/launch.sh ~/.config/polybar/launch.sh

echo "rofi config"

mkdir -p  $HOME/.config/rofi

touch $HOME/.config/rofi/config.rasi

if [ -f ~/.config/rofi/config.rasi ]; then
  mv ~/.config/rofi/config.rasi ~/.config/rofi/config.rasi-pre-dotfiles-bak
fi
ln -fs ~/dotfiles/config/.config/rofi/config.rasi ~/.config/rofi/config.rasi



echo "set zsh as default shell"
sudo chsh -s /usr/bin/zsh root

echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "- FINISHED CONFIG SETUP                                       -"
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
