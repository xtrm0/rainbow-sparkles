#!/bin/bash
#this script is intended to be modified, or else it will just install everything

source ./install/debian-base.sh
mkdir /etc/zsh/
cp -r ./shell/zsh/global/* /etc/zsh/
cp ./shell/bash/global/bash.bashrc /etc/bash.bashrc
cp ./shell/aliases.sh /etc/aliases.sh
mkdir ~/.emacs.d/
cp -r ./base/emacs/* ~/.emacs.d/
mkdir ~/.config/
mkdir ~/.config/terminator/
cp ./base/terminator/config ~/.config/terminator/config
echo "Instalation Complete! Enjoy our rainbow sparkles on top of your vanilla software!"
