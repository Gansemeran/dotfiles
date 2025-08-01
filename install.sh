#!/usr/bin/env bash

# install deps

# currently install using paru on arch or apt
install() {
    if hash paru 2>/dev/null; then
        sudo paru -S "$@" --noconfirm
    else
        sudo apt install "$@" -y
    fi
}

# fzf in ubunbtu/debian is stupid old
install_fzf() {
    if hash paru 2>/dev/null; then
		install fzf
    else
       go install github.com/junegunn/fzf@latest
    fi
}
# omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# package manager deps
install tmux stow
install_fzf

# deno is optional
# curl -fsSL https://deno.land/install.sh | sh -y --no-modify-path

# run stow to load dotfiles
./stow.sh

