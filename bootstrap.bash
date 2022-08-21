#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

if [ -z ${GITHUB_ACTIONS+x} ];
then
  # fish
  figlet "Welcome Home" | lolcat 
fi
