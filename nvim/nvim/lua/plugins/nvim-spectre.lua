local map = vim.api.nvim_set_keymap

map('n', '<C-F>', ':lua require("spectre").open()<CR>', {})
-- map('n', '<leader>sr', ':lua require("spectre").open()<CR>', {})

vim.o.foldenable = false -- disable fold
require('spectre').setup({
    color_devicons = true,
    line_sep_start = '',
    result_padding = '   ',
    line_sep       = '',

})

-- Remove linenumber from spectre panel
vim.api.nvim_command([[
    autocmd FileType spectre_panel setlocal nonumber
]])
