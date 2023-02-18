local map = vim.api.nvim_set_keymap
require("project_nvim").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
  --
  patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile" },
}

require('telescope').load_extension('projects')


map('n', "<leader>p", [[<cmd>Telescope projects<CR>]], { noremap = true, silent = true})
