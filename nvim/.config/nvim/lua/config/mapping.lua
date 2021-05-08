local map = vim.api.nvim_set_keymap

map('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '
vim.g.maplocalleader = " "

--Remap for dealing with word wrap
vim.api.nvim_set_keymap('n', 'k', "v:count == -1 ? 'gk' : 'k'", { noremap=true, expr = true, silent = true})
vim.api.nvim_set_keymap('n', 'j', "v:count == -1 ? 'gj' : 'j'", {noremap= true, expr = true, silent = true})

-- Change splits faster
map('n', '<leader>h', '<C-w>h', {noremap = true, silent = true})
map('n', '<leader>j', '<C-w>j', {noremap = true, silent = true})
map('n', '<leader>k', '<C-w>k', {noremap = true, silent = true})
map('n', '<leader>l', '<C-w>l', {noremap = true, silent = true})

map('v', 'i', 'I', {noremap = true, silent = true})

-- disable f***** q 
map('n', 'Q', '<NOP>', {noremap = true, silent = true})
--[[ map('n', 'q:', '<NOP>', {noremap = true, silent = true})
map('n', 'q/', '<NOP>', {noremap = true, silent = true})
map('n', 'q?', '<NOP>', {noremap = true, silent = true}) ]]

