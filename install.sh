#!/usr/bin/env sh

ln -sf $(pwd)/bashrc.local ~/.bashrc.local
if ! grep -Fq '# my bash config' ~/.bashrc; then
    echo "# my bash config" >> ~/.bashrc
    echo "if [[ -r ~/.bashrc.local ]]; then" >> ~/.bashrc
    echo "    source ~/.bashrc.local" >> ~/.bashrc
    echo "fi" >> ~/.bashrc
fi
