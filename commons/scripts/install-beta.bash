#!/bin/bash

# requirement curl

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

NONINTERACTIVE= brew install git docker distrobox


(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/gaetan/.profile
