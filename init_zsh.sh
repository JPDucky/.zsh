#!/bin/sh
set -e

# set the path to the zshrc file
ZSHRC="$HOME/.zshrc"
touch .jpducky

# line to check if exists in zshrc
CONFIG_LINE="for config ($HOME/.zsh/.zshrc) source $config"

if [[ ! -f .jpducky ]]; then
    if [[ -f "$ZSHRC" ]]; and grep -Fxq "$CONFIG_LINE" "$ZSHRC"; then
        break
        else
            cp "$ZSHRC" $HOME/.zsh/.zshrc_old
            sed -i 's/^/#/' $ZSHRC
            sed -i '1s/^/'"$CONFIG_LINE"'\n/' $ZSHRC
            break
        fi
else
    echo "$ZSHRC does not exist. Do you have ZSH installed?"
    echo "Creating file..." 
    touch $ZSHRC && chmod 755 $ZSHRC
    echo "Adding config to $ZSHRC"
    echo "$CONFIG_LINE" >> $ZSHRC
    break
fi

