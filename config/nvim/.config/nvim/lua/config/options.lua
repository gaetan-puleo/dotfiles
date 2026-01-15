-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

if not vim.g.vscode then
  -- Load new content in the current window if file changed
  vim.o.autoread = true
  vim.api.nvim_create_autocmd(
    {"FocusGained", "BufEnter", "CursorHold", "CursorHoldI"},
    { command = "checktime" }
  )

  vim.api.nvim_create_autocmd("FileChangedShellPost", {
    callback = function()
      vim.notify("Fichier modifié sur le disque. Buffer rechargé.", vim.log.levels.WARN)
    end,
  })
end
-- Disable highlight on search
vim.o.hlsearch = false

-- Enable line numbers by default
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true


if not vim.g.vscode then
  -- Keep signcolumn on by default
  vim.wo.signcolumn = 'yes'

  -- Decrease update time
  vim.o.updatetime = 250

  -- reduce cursorhold to 100
  vim.g.cursorhold_updatetime = 100
end

vim.o.timeoutlen = 300
vim.o.timeout = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

if not vim.g.vscode then
  -- NOTE: You should make sure your terminal supports this
  vim.o.termguicolors = true
end

-- Enable local .nvimrc
vim.o.exrc = true;
vim.o.secure = true;

-- One tab is equal to 2 spaces
-- To customize the spacing locally, create an .editorconfig file for your project
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

if not vim.g.vscode then
  vim.wo.cursorline = true -- Enable highlighting of the current line
end

vim.o.belloff = "all"  -- disable alerts

vim.o.splitbelow = true  -- horizontal splits will automatically be below
vim.o.splitright = true  -- vertical splits will automatically be to the right

vim.o.backup = false  -- disable backup
vim.o.swapfile = false  -- disable swap file

vim.o.autowrite = true  -- auto-save when changing buffers
vim.o.hidden = true  -- necessary to keep multiple buffers open

if not vim.g.vscode then
  vim.wo.numberwidth = 4 -- columns number in gutter
  vim.o.showmode = false  -- we don't need to see things like -- INSERT --
  vim.o.cmdheight = 0  -- command line height
end

-- Set highlight on search
vim.o.hlsearch = true
vim.o.incsearch = true

-- Incremental live completion
vim.o.inccommand = "nosplit"

if not vim.g.vscode then
  -- Setting list characters for display
  vim.o.listchars = "eol:↵,trail:~,tab:>-,nbsp:␣,space:_"

  -- Fold settings
  vim.o.foldenable = true
  vim.o.fillchars = "eob: ,fold: ,foldopen:▼,foldsep: ,foldclose:⏵"
  vim.o.foldlevel = 99
  vim.o.foldcolumn = "1"
  vim.o.foldlevelstart = 99

  --global statusline
  vim.opt.laststatus = 3
end

if not vim.g.vscode then
  vim.diagnostic.config {
      underline = true,
      virtual_text = false,
      signs = true,
      severity_sort = true,
      update_in_insert = false,
  }

  vim.cmd [[
   au BufRead,BufNewFile *.njk set filetype=html
    au BufRead,BufNewFile *.ejs set filetype=html
  ]]

  vim.opt.shortmess:append("I")

  vim.api.nvim_create_autocmd(
    {"FocusGained", "BufEnter", "CursorHold", "CursorHoldI"},
    { command = "checktime" }
  )
end
