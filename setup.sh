#!/bin/bash



# refs


ln -s config/profile ~/.profile
ln -s config/zshrc ~/.zshrc
ln -s config/Xresources ~/.Xresources
ln -s config/tmux.conf ~/.tmux.conf
ln -s config/vimrc ~/.vimrc

mkdir -p ~/.config/{i3,Code/User/snippets}
ln -s config/i3-config ~/.config/i3/config
ln -s config/Code/keybindings.json ~/.config/Code/User/keybings.json
ln -s config/Code/settings.json ~/.config/Code/User/settings.json


# some of the dependencies (incomplete ofc)
sudo apt install vim tmux i3lock

# setup vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall 


