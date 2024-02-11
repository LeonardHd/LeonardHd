#!/bin/bash

DOTFILES="$HOME/.LeonardHd/sysconfs/dotfiles"

ln -sf "$DOTFILES/.profile" "$HOME/.profile"
ln -sf "$DOTFILES/.bashrc" "$HOME/.bashrc"
