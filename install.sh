#!/usr/bin/env bash

ln -sf "$(pwd)/bashrc.local" ~/.bashrc.local
[[ -f ~/.bashrc ]] || touch ~/.bashrc
if ! grep -Fq '# my bash config' ~/.bashrc; then
    {
        echo "# my bash config"
        echo "if [[ -r ~/.bashrc.local ]]; then"
        echo "    source ~/.bashrc.local"
        echo "fi"
    } >>~/.bashrc
fi
