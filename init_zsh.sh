#!/bin/sh
set -e

# set the path to the zshrc file
ZSHRC="$HOME/.zshrc"
touch .jpducky

# line to check if exists in zshrc
CONFIG_LINE="for config ($HOME/.zsh/.zshrc) source $config"

if [[ ! -f .jpducky ]]; then
    if [[ -f "$ZSHRC" ]]; then
        if grep -Fxq "$CONFIG_LINE" "$ZSHRC"; then
            exit 0
        else
            cp "$ZSHRC" $HOME/.zsh/.zshrc
            sed -i 's/^/#/' $ZSHRC
            sed -i '1s/^/'"$CONFIG_LINE"'\n/' $ZSHRC
            exit 0
        fi
else
    echo "$ZSHRC does not exist. Do you have ZSH installed?"
    echo "Creating file..." 
    touch $ZSHRC && chmod 755 $ZSHRC
    echo "Adding config to $ZSHRC"
    echo "$CONFIG_LINE" >> $ZSHRC
    exit 0
    fi
fi

