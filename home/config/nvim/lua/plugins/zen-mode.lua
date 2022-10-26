require("zen-mode").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}

vim.api.nvim_set_keymap("n", "<leader>z", ":ZenMode<CR>", {noremap = true})
