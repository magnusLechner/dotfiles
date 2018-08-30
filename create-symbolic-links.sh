#!/usr/bin/env bash

echo ">>> script to create symbolic links started <<<"

# print current time
echo $(date)

# change into dotfiles repository directory
dotfiles_repo=$HOME/git/dotfiles
cd $dotfiles_repo
echo "print working directory: $(pwd)"

# define all files for which a symbolic link will be created
#ln -s $dotfiles_repo/README.md $HOME
#ln -s $dotfiles_repo/README.md $HOME/mydir/README.md



# print current time
echo $(date)

echo ">>> script to create symbolic links finished<<<"

createSymbolicLinks() {
    if [-z "$1"] then
        echo "No arguments are supplied."
    fi

}

