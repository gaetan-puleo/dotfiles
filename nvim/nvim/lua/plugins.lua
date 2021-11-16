-- Install packer
local execute = vim.api.nvim_command
-- local split = require('utils/split')
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '.. install_path)
end

vim.api.nvim_exec([[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]], false)

require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- packager for neovim
  use 'folke/tokyonight.nvim' -- Theme
  use 'antoinemadec/FixCursorHold.nvim'
  use 'nvim-lua/popup.nvim' 
  use 'nvim-lua/plenary.nvim'
  use('sbdchd/neoformat') -- Formatter
  use 'djoshea/vim-autoread' -- Autoread file
  use 'RishabhRD/popfix'

  -- cheatsheets
  use {'folke/which-key.nvim'}

  -- nvim tree
  use('kyazdani42/nvim-tree.lua')

  -- comments
	use {'tpope/vim-commentary'}

  -- test runners manager
  use {'janko/vim-test'}

  
  -- completion
  use('hrsh7th/nvim-compe')
  use('onsails/lspkind-nvim')

	use 'andersevenrud/compe-tmux'
  -- statusline
  use('hoob3rt/lualine.nvim')

	-- graphql
	use('jparise/vim-graphql')
  -- front page
  use('glepnir/dashboard-nvim')

  -- bufferline
  use('akinsho/nvim-bufferline.lua')

	-- icons
	use('kyazdani42/nvim-web-devicons')

  -- better nodejs go to file
  use('PsychoLlama/further.vim')

  use('tpope/vim-dispatch')

  -- treesitter
  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use('JoosepAlviste/nvim-ts-context-commentstring')
  use 'windwp/nvim-ts-autotag'
	use 'nvim-treesitter/nvim-treesitter-refactor'
	use 'SmiteshP/nvim-gps'

  -- check color preview
  use 'norcalli/nvim-colorizer.lua'

  -- git gutter
  use('lewis6991/gitsigns.nvim')

	-- snap (grep in files)
	use { 'camspiers/snap' }

  -- nvim lsp
	use {'neovim/nvim-lspconfig'}
	use {'jose-elias-alvarez/nvim-lsp-ts-utils'}

	-- git wrapper
  use('tpope/vim-fugitive')
 
  -- use('glepnir/lspsaga.nvim')
	use { 'tami5/lspsaga.nvim', branch = 'nvim51' }
  use('christoomey/vim-tmux-navigator')

	-- finder
 	use 'nvim-telescope/telescope.nvim'

	-- enable command like :32 to go to line 32
	use 'nacro90/numb.nvim'

	-- focus only current code
	use 'folke/twilight.nvim'
	
	-- focus current buffer
	use 'folke/zen-mode.nvim'
	-- find in text
	use 'NTBBloodbath/color-converter.nvim'
	use 'tpope/vim-unimpaired'

	use 'ggandor/lightspeed.nvim'
	-- use 'dyng/ctrlsf.vim'
	-- nvim window
	use 'https://gitlab.com/yorickpeterse/nvim-window.git'
end)

require('plugins/bufferline')
require('plugins/compe')
require('plugins/commentary')
require('plugins/dashboard')
require('plugins/gitsigns')
require('plugins/lsp-config') 
require('plugins/lspkind')
require('plugins/lualine')
require('plugins/lspsaga')
require('plugins/neoformat') 
require('plugins/numb') 
require('plugins/nvim-colorizer') 
require('plugins/nvim-tree') 
require('plugins/nvim-window') 
require('plugins/snap')
require('plugins/telescope')
require('plugins/tmux-navigator')
require('plugins/treesitter')
require('plugins/twilight')
require('plugins/vim-test')
require('plugins/which-key-nvim')
require('plugins/zen-mode')

vim.cmd[[colorscheme tokyonight]]
