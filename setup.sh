#!/bin/bash

# packs / unpacks the config files
# Pack:
#   link the files from the system into this repo
# Unpack:
#   copy the files from the repo to the ones on the system
# By default, links are symlink. You can edit that with $FLAG.

USAGE=$( cat <<-EOF
Usage: $0 [pack|unpack]
EOF
)

[[ "$#" != 1 ]] && { echo "$USAGE"; exit 1; }

FLAG="--force --symbolic"

if [[ "$1" == "pack" ]]; then
    echo Linking config...
    cd config
    for d in *; do
        cd "$d"
        for f in *; do
            ln $FLAG "$HOME/.config/$d/$f"
        done
        cd ..
    done
    cd ..

    echo Linking scripts...
    cd scripts
    for f in *; do
        ln $FLAG "$HOME/bin/$f"
    done
    cd ..

    echo Linking vim ftplugins...
    cd vim_ftplugin
    for f in *; do
        ln $FLAG "$HOME/.vim/ftplugin/$f"
    done
    cd ..

    # This includes hidden files in *
    shopt -s dotglob

    echo Linking .files...
    cd .files
    for f in *; do
        ln $FLAG "$HOME/$f"
    done
    cd ..

    shopt -u dotglob

elif [[ "$1" == "unpack" ]]; then
    echo Unpacking config...
    cp -rv ./config/* "$HOME"/.config/

    echo Unpacking .files...
    cp -rv ./.files/* "$HOME"/

    echo Unpacking scripts...
    [[ -d "$HOME"/bin ]] || { mkdir "$HOME"/bin; }
    cp -rv ./scripts/* "$HOME"/bin/
    chmod +x "$HOME"/bin/*
else
    echo "$USAGE"
    exit 1
fi
