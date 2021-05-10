###
# Dotfiles scripts
#
# using stow and make
#
# Heavily inspired by https://github.com/masasam/dotfiles/blob/master/Makefile
##

.DEFAULT_GOAL := help # Define default task
.PHONY: install


BASE_PKGS	:= zsh ripgrep git curl stow htop	# always installed

BASE_GUI := kitty 												# only gui env

DESIGN_PKGS := 	gimp gimp-plugin-registry # Design deps
DESIGN_PKGS +=	blender inkscape

OFFICE_PKGS := libreoffice-calc libreoffice-writter # office deps

OFFICE_DEV := jq httpie libgtk-3-dev # dev deps

# Node JS global packages
NODE_PKGS := tsun	vscode-html-languageserver-bin vscode-css-languageserver-bin 
NODE_PKGS += typescript typescript-language-server vscode-json-languageserver 
NODE_PKGS += diagnostic-languageserver eslint_d yarn 

# Packages
INSTALL_CMD := sudo apt install -y
UPDATE_CMD := sudo apt update
UPGRADE_CMD := sudo apt upgrade -y


help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

minimal_setup: 
	echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

zsh:	
	chsh -s $$(which zsh)

zgen:
	# Install zgen (zsh plugin manager)
	git clone https://github.com/tarjoilija/zgen.git ${HOME}/.zgen

kitty:
	# set kitty as default term
	sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $$(which kitty) 50
	sudo update-alternatives --set x-terminal-emulator $$(which kitty)

nvim: 
	# Install neovim 0.5.0
	sudo add-apt-repository ppa:neovim-ppa/unstable
	sudo apt-get update

fnm:
	# Install fnm (faster nvm alternative)
	curl -fsSL https://github.com/Schniz/fnm/raw/master/.ci/install.sh | bash -s -- --skip-shell

node: 
	# Install nodejs and nodejs global packages
	fnm install --lts
	fnm use 14
	npm install -g $(NODE_PKGS)

chrome:
	# Set public key
	wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	
	# Set chrome repo
	sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

	$(UPDATE_CMD)

	$(INSTALL_CMD) google-chrome-stable

stow:
	stow -n -t ${HOME} nvim
	stow -n -t ${HOME} git
	stow -n -t ${HOME} zsh

docker:
	$(INSTALL_CMD) docker docker-compose

docker_dev:
	$(INSTALL_CMD) docker docker-compose
	sudo usermod -aG docker ${USER}

minimal_gui:
	$(INSTALL_CMD) $(BASE_GUI)

install_design:
	$(INSTALL_CMD) $(DESIGN_PKGS)

install_office: 
	$(INSTALL_CMD) $(OFFICE_PKGS)

install_dev:
	$(INSTALL_CMD) $(DEV_PKGS)

install_base: 
	# install base packages
	$(UPDATE_CMD)
	$(UPGRADE_CMD)
	$(INSTALL_CMD) $(BASE_PKGS)

minimal: minimal_setup install_base zsh zgen nvim fnm node stow ## Install minimal deps
gui: minimal_gui kitty ## Install gui bundle
dev: docker docker_dev install_dev ## Install dev bundle
design: install_design ## Install Design bundle
office: install_office ## Install office bundle
server: docker ## Install Server bundle
raspberry: minimal server ## Setup a new raspberry server
all: minimal dev design office ## Setup a new PC
