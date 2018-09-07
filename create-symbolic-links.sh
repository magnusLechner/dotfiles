#!/usr/bin/env bash

prepare () {
    # change into dotfiles repository directory
    dotfiles_repo=$HOME/git/dotfiles
    cd $dotfiles_repo
}

create_symbolic_link () {
    if [ $# -eq 0 ] || [ $# -gt 2 ]
    then
        echo ERROR: Number of supplied arguments: $#
    else
        source=$dotfiles_repo/"$1"
        # standard dotfile destination
        destination=$HOME
        
        # check if a specific destination is provided
        if [ -n "$2" ]
        then
            destination=$2
        fi

        # create directory if it does not exist and create symbolic link
        mkdir -p $destination && ln -s $source $destination
    fi
}

# there might be a time where a dotfile is not under $HOME but
# $HOME/some/path/.my-dotfile or /etc/some/path/.my-dotfile 
# and therefore you can use
# create_symbolic_link my-dir/.my-dotfile /etc/test-dir/.my-dotfile
create_symbolic_links () {
    prepare

    # define all files for which a symbolic link will be created
    files=( ".vimrc" ".tmux.conf" ".bashrc" ".bash_profile" ".bashrc.aliases" ".zshrc")
    
    for index in "${files[@]}"
    do
        create_symbolic_link $index
    done
}

create_symbolic_links
