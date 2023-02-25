#!/bin/bash
sudo apt install curl

curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env
rustup update

apt install build-essential -y

echo 'PATH="$PATH:~/.cargo/bin"' >> ~/.bashrc

cargo install exa
echo 'alias ll="exa -l -g --git"' >> ~/.bashrc
echo 'alias llt="exa -1 --tree --git-ignore"' >> ~/.bashrc

cargo install ripgrep
cargo install --locked bat
cargo install sd
cargo install fd-find
cargo install kondo
cargo install tokei
cargo install du-dust
cargo install --locked zellij
cargo install cargo-outdated # needs pck something to install. Add that to the config as well
cargo install cargo-readme
cargo install zoxide --locked
echo 'eval "$(zoxide init bash)"' >> ~/.bashrc

cargo install git-delta

echo "[core]
        pager = delta
[interactive]
        diffFilter = delta --color-only --features=interactive
[delta]
        features = decorations

[delta \"interactive\"]
        keep-plus-minus-markers = false

[delta \"decorations\"]
        commit-decoration-style = blue ol
        commit-style = raw
        file-style = omit
        hunk-header-decoration-style = blue box
        hunk-header-file-style = red
        hunk-header-line-number-style = \"#067a00\"
        hunk-header-style = file line-number syntax
" >> ~/.gitconfig
