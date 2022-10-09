local map = vim.api.nvim_set_keymap

require('spectre').setup({
  color_devicons = true,
})


map('n', "<leader>sr", [[<cmd>lua require('spectre').open()<CR>]], { noremap = true, silent = true})

