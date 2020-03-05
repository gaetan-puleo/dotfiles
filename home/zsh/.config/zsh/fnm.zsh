# fnm
export PATH=$HOME/.fnm:$PATH
eval "`fnm env --multi`"
export NODE_PATH=$NODE_PATH:`npm root -g`
