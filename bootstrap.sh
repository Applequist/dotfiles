#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")" || exit;

git pull origin main;

function doIt() {
    rsync --exclude ".git/" \
        --exclude ".DS_Store" \
        --exclude ".osx" \
        --exclude "bootstrap.sh" \
        --exclude "README.md" \
        --exclude "LICENSE-MIT.txt" \
        -avh --no-perms . ~;
    source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    echo "I am doing it...";
    doIt;
else
    read -rp "This may overwrite existing files in your home directory. Do you want to proceed? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
unset doIt;

