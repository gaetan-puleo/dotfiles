# We need to install fish first

fish -c "nvm install lts"

fish -c "nvm use lts"

fish -c "npm install -g tsun \
	vscode-html-languageserver-bin \
	vscode-css-languageserver-bin \
	typescript \
	typescript-language-server \
	vscode-json-languageserver \
	diagnostic-languageserver \
	eslint_d yarn \
	bash-language-server
"
