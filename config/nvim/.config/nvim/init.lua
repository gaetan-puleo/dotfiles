require('config/options')
require('config/mapping')

if not vim.g.vscode then
  require('config/lsp')
  require('config/lazy')
end
