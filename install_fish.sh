#!/bin/bash
############################
# .make.sh
# This script creates symlinks from fish folder and the git fish folder
############################

########## Variables

dir=${HOME}/.myDotFiles                    # dotfiles directory
olddir=${HOME}/.myDotFiles/.backup             # old dotfiles backup directory
git_fish_config=$dir/.config/fish
fish_installation=${HOME}/.config/fish
##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing fish configuration"
mkdir -p $olddir
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
echo "Backuping old fish config to $olddir"
rsync -avq --remove-source-files --force ${HOME}/.config/fish $olddir

echo "Fish: Creating symlink to $git_fish_config in home directory."
ln -s git_fish_config fish_installation

echo "Git: Installation of global config"
ln -s ${HOME}/.myDotFiles/.gitignore_global ${HOME}/.gitignore_global
