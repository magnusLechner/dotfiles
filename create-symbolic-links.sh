#!/usr/bin/env bash

create_symbolic_links () {
    if [ $# -eq 0 ] || [ $# -gt 2 ]
    then
        echo ERROR: Number of supplied arguments: $#
    else
        source="$1"
        # standard dotfile destination
        destination=$HOME
        
        # check if a specific destination is provided
        if [ -n "$2" ]
        then
            destination=$2
        fi

        # schauen ob das geht 
        source=$HOME/.test
        destination=$HOME/test-dir/.test
        
        source=$HOME/test-dir/.test
        destination=$HOME/.test

        echo Create a symbolic link from $source to $destination
    fi
}

echo ---script to create symbolic links started---

# print current time
echo $(date)

# change into dotfiles repository directory
dotfiles_repo=$HOME/git/dotfiles
cd $dotfiles_repo
echo print working directory: $(pwd)

# define all files for which a symbolic link will be created
#ln -s $dotfiles_repo/README.md $HOME
#ln -s $dotfiles_repo/README.md $HOME/mydir/README.md
create_symbolic_links $dotfiles_repo/README.md 
create_symbolic_links $dotfiles_repo/README.md ASD
create_symbolic_links $dotfiles_repo/README.md asd asd

# print current time
echo $(date)

echo ---script to create symbolic links finished---
