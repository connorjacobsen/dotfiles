#!/bin/sh
#
# Install dotfiles.

# Set environment variables
export MYVIMRC=~/.vimrc

# Create symlinks
path=$(pwd)

function create_symlink {
  file_name=$1
  file_path="$path"/"$file_name"
  ln -s $file_path ~/."$file_name"
}

# Files to symlink
files=( zshrc vimrc vim rspec gitconfig pryrc pry agignore oh-my-zsh zshenv)

for file in "${files[@]}"
do
  create_symlink $file
done

# Install Vundle plugins
vim +PluginInstall +qall
