-- by default all formatters are enabled
vim.cmd('source ~/.config/nvim/config/neoformatter.vim')

vim.g.neoformat_enabled_javascript = { 'prettier', 'eslint_d' }
