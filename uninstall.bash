#!/bin/bash

echo "Restore default"
cp ~/.bashrc.bak ~/.bashrc
cp ~/.profile.bak ~/.profile

rm -rf $HOME/{.nix-channels,.nix-defexpr,.nix-profile}
