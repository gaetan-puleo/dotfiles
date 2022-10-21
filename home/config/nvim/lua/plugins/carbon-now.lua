local map = vim.api.nvim_set_keymap

local carbon = require('carbon-now')
carbon.setup({
  options = {
    theme = "one-dark",
    font_family = "Fira Code",
    bg = "#45aaf2",
    width = "680",
  }
})


map('n', '<leader>mc', ':CarbonNow<CR>', {noremap = true, silent = true})
