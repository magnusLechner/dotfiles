#!/usr/bin/env bash

create_symbolic_links () {
    if [ $# -eq 0 ] || [ $# -gt 2 ]
    then
        echo ERROR: Number of supplied arguments: $#
    else
        echo ---- TODO: put logic here ----
        echo One or two arguments.
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
