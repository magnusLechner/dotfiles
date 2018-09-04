#!/usr/bin/env bash

# update keyring
yaourt -S --noconfirm --needed archlinux-keyring

# zsh
yaourt -S --noconfirm --needed zsh
yaourt -S --noconfirm --needed zsh-completions
yaourt -S --noconfirm --needed oh-my-zsh-git

# editor
yaourt -S --noconfirm --needed visual-studio-code-bin
yaourt -S --noconfirm --needed vim

# programming
yaourt -S --noconfirm --needed tmux
yaourt -S --noconfirm --needed jetbrains-toolbox

# misc
yaourt -S --noconfirm --needed discord
yaourt -S --noconfirm --needed spotify
yaourt -S --noconfirm --needed dropbox
yaourt -S --noconfirm --needed thunderbird
yaourt -S --noconfirm --needed keepass
