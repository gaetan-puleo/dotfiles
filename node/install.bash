# Install fnm (faster nvm alternative)
curl -fsSL https://github.com/Schniz/fnm/raw/master/.ci/install.sh | bash
source ${HOME}/.bashrc

# Install nodejs and nodejs global packages
fnm install --lts
fnm use 14
npm install -g tsun \
	vscode-html-languageserver-bin \
	vscode-css-languageserver-bin \
	typescript \
	typescript-language-server \
	vscode-json-languageserver \
	diagnostic-languageserver \
	eslint_d yarn \
	bash-language-server

