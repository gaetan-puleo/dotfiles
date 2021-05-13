-- Set true colors
vim.o.termguicolors = true

vim.g.cursorhold_updatetime = 100

-- enable local .nvimrc
vim.o.exrc = true
vim.o.secure = true

-- one tab is equal 2 spaces
vim.cmd('set ts=2')
vim.cmd('set sw=2')
vim.bo.expandtab = true

vim.wo.number = true -- set numbered lines

vim.o.belloff = 'all' -- disable alerts

vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.splitright = true -- Vertical splits will automatically be to the right

vim.wo.cursorline = true -- Enable highlighting of the current line

vim.o.backup = false -- Disable backup
vim.o.swapfile = false -- Disable swapfile

vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.autowrite = true -- Autosave when changing buffer
vim.o.mouse = "a" -- Enable your mouse

vim.o.hidden = true -- Required to keep multiple buffers open
vim.o.timeoutlen = 300 -- By default timeoutlen is 1000 ms

-- Persistent undo history
-- vim.o.undodir = '$HOME/.cache/.vim/undodir'
-- vim.o.undofile = true
--Save undo history
vim.cmd[[set undofile]]

vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore

vim.wo.numberwidth = 4 -- columns number in gutter
vim.o.cmdheight = 2 -- cmd line height

--Enable break indent
vim.o.breakindent = true

--Set highlight on search
vim.o.hlsearch = true
vim.o.incsearch = true

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Incremental live completion
vim.o.inccommand = "nosplit"

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn="yes"

-- Change preview window location
vim.g.splitbelow = true








