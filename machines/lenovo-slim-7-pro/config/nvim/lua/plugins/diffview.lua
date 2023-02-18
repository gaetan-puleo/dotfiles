local map = vim.api.nvim_set_keymap

local actions = require("diffview.actions")
require("diffview").setup({

})

map('n', '<leader>gd', ':DiffviewOpen<CR>', {})
