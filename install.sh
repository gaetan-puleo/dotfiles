#!/bin/bash

chsh -s /bin/bash

cd ./scripts

# ./aptinstalls.sh
# ./programs.sh
bash ./symlinks.sh
# ./clean-after-install.sh

figlet "... and we're back!" | lolcat
