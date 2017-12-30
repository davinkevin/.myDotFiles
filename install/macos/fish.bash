#!/usr/bin/env bash

echo "Installaling fish and fisherman"
brew update
brew install fish
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
