vim.api.nvim_set_keymap("n", "<A-h>", ":TmuxNavigateLeft<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<A-j>", ":TmuxNavigateDown<CR>", {noremap = true})  -- <C-_> is ctrl + /
vim.api.nvim_set_keymap("n", "<A-k>", ":TmuxNavigateUp<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<A-l>", ":TmuxNavigateRight<CR>", {noremap = true})
