#!/usr/bin/env bash

# update keyring
yaourt -S --noconfirm --needed archlinux-keyring

# zsh
yaourt -S --noconfirm --needed zsh
# for theme see: https://github.com/Anthony25/gnome-terminal-colors-solarized
# and https://github.com/agnoster/agnoster-zsh-theme

# editor
yaourt -S --noconfirm --needed visual-studio-code-bin
yaourt -S --noconfirm --needed vim

# programming - download IDE manually
yaourt -S --noconfirm --needed tmux

# misc
yaourt -S --noconfirm --needed rofi
yaourt -S --noconfirm --needed xbindkeys

yaourt -S --noconfirm --needed discord
yaourt -S --noconfirm --needed spotify
yaourt -S --noconfirm --needed dropbox
yaourt -S --noconfirm --needed thunderbird
yaourt -S --noconfirm --needed keepass
