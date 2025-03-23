#!/usr/bin/env bash

# install deps

# currently install using paru on arch or apt in debian/ubuntu
# currently just for fzf, maybe swap to using from source/github releases
install() {
    if hash paru 2>/dev/null; then
        sudo paru -S "$@" --no-confirm
    else
        sudo apt install "$@" -y
    fi
}

# omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# fzf
install fzf


# run stow to load dotfiles
./stow.sh

