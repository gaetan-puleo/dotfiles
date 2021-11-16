local map = vim.api.nvim_set_keymap

map('n', "<leader>w", [[<cmd>lua require('nvim-window').pick()<cr>]], { noremap = true, silent = true})

