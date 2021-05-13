local map = vim.api.nvim_set_keymap

map('n', '<C-F>', ':lua require("spectre").open()<CR>', {})
map('n', '<leader>sr', ':lua require("spectre").open()<CR>', {})

vim.o.foldenable = false -- disable fold
