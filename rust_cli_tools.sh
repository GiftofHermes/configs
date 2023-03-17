#!/bin/bash
#install git manually

apt install curl

curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env
rustup update

apt install build-essential -y

echo 'PATH="$PATH:~/.cargo/bin"' >> ~/.bashrc

cargo install exa
echo 'alias l="exa -l --git"' >> ~/.bashrc
echo 'alias la="exa -l -a --git"' >> ~/.bashrc
echo 'alias ll="exa -l -g -a --git"' >> ~/.bashrc
echo 'alias llt="exa -1 --tree --git-ignore"' >> ~/.bashrc
echo 'alias llr="exa -l --recurse --level=2"' >> ~/.bashrc

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
[merge]
        conflictstyle = diff3
[delta]
        features = unobstrusive-line-numbers decorations
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
        side-by-side = true
[delta \"unobtrusive-line-numbers\"]
    line-numbers = true
    line-numbers-minus-style = \"#444444\"
    line-numbers-zero-style = \"#444444\"
    line-numbers-plus-style = \"#444444\"
    line-numbers-left-format = \"{nm\:\>4}┊\"
    line-numbers-right-format = \"{np\:\>4}│\"
    line-numbers-left-style = blue
    line-numbers-right-style = blue
" >> ~/.gitconfig
