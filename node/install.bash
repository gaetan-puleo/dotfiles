# We need to install fish first

fish -c "nvm install 14"

fish -c "nvm use 14"

fish -c "set --universal nvm_default_version v14"

fish -C "npm install -g tsun \
	vscode-html-languageserver-bin \
	vscode-css-languageserver-bin \
	typescript \
	typescript-language-server \
	vscode-json-languageserver \
	diagnostic-languageserver \
	eslint_d yarn \
	graphql-language-service-cli \
	bash-language-server && exit
"

