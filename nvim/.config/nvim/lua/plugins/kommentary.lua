--vim.g.kommentary_create_default_mappings = false
--vim.api.nvim_set_keymap("n", "<leader>/", "<Plug>kommentary_line_default", {})
-- vim.api.nvim_set_keymap("n", "<leader>c", "<Plug>kommentary_motion_default", {})
--vim.api.nvim_set_keymap("v", "<leader>/", "<Plug>kommentary_visual_default", {})

vim.api.nvim_set_keymap("n", "<leader>/", "gcc", {})
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", {})  -- <C-_> is ctrl + /
-- vim.api.nvim_set_keymap("n", "<leader>c", "<Plug>kommentary_motion_default", {})
vim.api.nvim_set_keymap("v", "<leader>/", "gc", {})
vim.api.nvim_set_keymap("v", "<C-_>", "gc", {})
