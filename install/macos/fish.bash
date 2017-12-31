#!/usr/bin/env bash

echo "Installing fish and fisherman"
brew update
brew install fish
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
