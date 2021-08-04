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


# add tailwindServer
# curl -L -o tailwindcss-intellisense.vsix https://github.com/tailwindlabs/tailwindcss-intellisense/releases/download/v0.6.8/vscode-tailwindcss-0.6.8.vsix
# unzip tailwindcss-intellisense.vsix -d tailwindcss-intellisense
# echo "#\!/usr/bin/env node\n$(cat tailwindcss-intellisense/extension/dist/server/tailwindServer.js)" > tailwindcss-language-server
# chmod +x tailwindcss-language-server
