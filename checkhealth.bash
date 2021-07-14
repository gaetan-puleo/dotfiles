# checkhealth scripts
# This file needs to be running without any issue

# ----------------------------------
# Colors
# ----------------------------------
NOCOLOR='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'


echo -e "${GREEN}MY CONFIG${NOCOLOR}"
lsb_release -a
echo -e "\n"

echo -e "${GREEN}NVIM CHECK${NOCOLOR}"
nvim -v
echo -e "\n"

# node
echo -e "${GREEN}NODE CHECK${NOCOLOR}"
fish -c "node -v"
echo -e "\n"

echo -e "${GREEN}YARN CHECK${NOCOLOR}"
fish -c "yarn -v"
echo -e "\n"

echo -e "${GREEN}DOCKER CHECK${NOCOLOR}"
docker -v
docker-compose -v
echo -e "\n"

echo -e "${GREEN}TMUX CHECK${NOCOLOR}"
tmux -V
echo -e "\n"

echo -e "${GREEN}KITTY CHECK${NOCOLOR}"
kitty -v
echo -e "\n"

echo -e "${GREEN}GIT CHECK${NOCOLOR}"
git --version
echo -e "\n"

echo -e "${GREEN}FISH CHECK${NOCOLOR}"
fish --version
echo -e "\n"

echo -e "${GREEN}HTTPIE CHECK${NOCOLOR}"
http --version
echo -e "\n"
