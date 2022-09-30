#!/bin/bash
sudo apt install exa
cargo install ripgrep
cargo install --locked bat
cargo install sd
cargo install fd-find
cargo install kondo
cargo install tokei
cargo install zoxide --locked
# add eval "$(zoxide init bash)" to ~/.bashrc
cargo install git-delta
add to ~/.gitignore
#[core]
#    pager = delta
#
#[interactive]
#    diffFilter = delta --color-only --features=interactive
#
#[delta]
#    features = decorations
#
#[delta "interactive"]
#    keep-plus-minus-markers = false
#
#[delta "decorations"]
#    commit-decoration-style = blue ol
#    commit-style = raw
#    file-style = omit
#    hunk-header-decoration-style = blue box
#    hunk-header-file-style = red
#    hunk-header-line-number-style = "#067a00"
#    hunk-header-style = file line-number syntax
