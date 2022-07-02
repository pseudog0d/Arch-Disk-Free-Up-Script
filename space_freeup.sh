#!/bin/bash
sudo pacman -Scc
files_to_be_deleted=$(sudo pacman -Qtdq)
if [ -z "$files_to_be_deleted" ]
then 
    echo "Nothing to Delete"
else
    echo "Now Deleting cached content"
    sudo pacman -Rns $(sudo pacman -Qtdq)
fi
sudo rm -rf ~/.cache/*
sudo pacman -S rmlint
rmlint
./rmlint.sh