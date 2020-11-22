#!/usr/bin/env bash

echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "                                                               " 
echo "- STARTING SOFTWARE INSTALLATION                              -"
echo "                                                               "
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"

echo "make yay install without prompts"
yay --save --answerclean All --answerdiff All --save --nocleanmenu --nodiffmenu

echo "powerline fonts"
sudo pacman -S --noconfirm powerline-fonts

echo "spotify daemon"
sudo pacman -S --noconfirm spotifyd 

echo "spotify tui client"
sudo pacman -S --noconfirm spotify-tui

echo "get antigen plugin manager"
curl -L git.io/antigen > antigen.zsh

echo "oh-my-zsh"
yay -S oh-my-zsh-git

echo "todoist"
yay -S todoist

echo "peco"
yay -S peco

echo "dnote"
sudo curl -s https://www.getdnote.com/install | sh

echo "glow"
yay -S glow

echo "rofi"
yay -S rofi

echo "antigen"
curl -L git.io/antigen > antigen.zsh

echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "                                                               " 
echo "- FINISHED SOFTWARE INSTALLATION                              -"
echo "-                                                              "
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
