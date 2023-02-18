local map = vim.api.nvim_set_keymap

local carbon = require('carbon-now')
carbon.setup({
  options = {
    theme = "one-dark",
    font_family = "Fira Code",
    bg = "linear-gradient(to left bottom, #7aa2f7, #86a1f8, #939ff9, #9f9ef9, #ab9cf9, #bb97f2, #ca92ea, #d78de1, #e684ce, #f07db9, #f678a4, #f7768e);",
    width = "680",
  }
})

map('n', '<leader>mc', ':CarbonNow<CR>', {noremap = true, silent = true})
