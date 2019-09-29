#!/bin/bash

# chsh -s /bin/bash

cd ./scripts

bash ./before-install.sh
bash ./aptinstalls.sh
bash ./programs.sh
bash ./symlinks.sh
bash ./clean-after-install.sh

figlet "... and we're back!" | lolcat
