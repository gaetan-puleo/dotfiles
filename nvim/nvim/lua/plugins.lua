-- Install packer
local execute = vim.api.nvim_command
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
  use {'folke/tokyonight.nvim', commit = '8223c970677e4d88c9b6b6d81bda23daf11062bb'} -- Theme

  use {'antoinemadec/FixCursorHold.nvim', commit = '0e4e22d21975da60b0fd2d302285b3b603f9f71e'}
  use 'nvim-lua/popup.nvim' 
  use {'nvim-lua/plenary.nvim', commit = '563d9f6d083f0514548f2ac4ad1888326d0a1c66'}
  use 'djoshea/vim-autoread' -- Autoread file
  use 'RishabhRD/popfix'

  -- cheatsheets
  use {'folke/which-key.nvim',commit =  '28d2bd129575b5e9ebddd88506601290bb2bb221'}

  -- nvim tree
  use {
    'kyazdani42/nvim-tree.lua',
    commit = '2dfed89af7724f9e71d2fdbe3cde791a93e9b9e0'
  }
  use {
    'lewis6991/gitsigns.nvim',
    commit = '2fa3716bc4690da96d885becdf9988603f0756f0'
  }
  -- comments
	use {'tpope/vim-commentary', commit = '627308e30639be3e2d5402808ce18690557e8292'}

  -- test runners manager
  -- use {'janko/vim-test'}

  
  -- completion
  use { 'L3MON4D3/LuaSnip', commit = '35322c97b041542f95c85e87a8215892ea4137d5' }
  use({ 'hrsh7th/nvim-cmp', commit = 'd6838996da8dc9fe4697632d2abf34086ebab427' })
  use({ 'hrsh7th/cmp-buffer', commit = 'f83773e2f433a923997c5faad7ea689ec24d1785' })
  use({ 'hrsh7th/cmp-nvim-lsp' , commit = 'ebdfc204afb87f15ce3d3d3f5df0b8181443b5ba' })
  use({ 'onsails/lspkind-nvim', commit = 'f0d1552890e384f15b47ea88bd1b8a077cddc24a' })
  use({ 'saadparwaiz1/cmp_luasnip', commit = 'd6f837f4e8fe48eeae288e638691b91b97d1737f' })
	use "rafamadriz/friendly-snippets"
  -- lsp
  use({ 'neovim/nvim-lspconfig', commit = 'e7df7ecae0b0d2f997ea65e951ddbe98ca3e154b'})
  use({ 'jose-elias-alvarez/null-ls.nvim', commit = 'e8a666829a3d803844f24daa4932e4f5fe76cbeb'})
  use {'jose-elias-alvarez/nvim-lsp-ts-utils', commit = '64d233a8859e27139c55472248147114e0be1652' }
  -- statusline
  use({'nvim-lualine/lualine.nvim', commit = 'aed7f2546177b5ffc8300f1ecd1c9e0e06779695'})

	-- graphql
	-- use('jparise/vim-graphql')
  -- front page
  -- use('glepnir/dashboard-nvim')

  -- bufferline
  use({'akinsho/nvim-bufferline.lua', commit = '7451dfc97d28e6783dbeb1cdcff12619a9323c98'})
	-- icons
	use {'kyazdani42/nvim-web-devicons', 
    commit = '634e26818f2bea9161b7efa76735746838971824'
  }

  -- better nodejs go to file
  use('PsychoLlama/further.vim')


  -- treesitter
  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', commit = 'efedf3510aa85f89a687dd1e29eab6f4677fa17e'})
  use({'JoosepAlviste/nvim-ts-context-commentstring', commit = '097df33c9ef5bbd3828105e4bee99965b758dc3f'})
  use({'windwp/nvim-ts-autotag', commit = '32bc46ee8b21f88f87d97b976ae6674595b311b5'})
	use({'nvim-treesitter/nvim-treesitter-refactor', commit = '0dc8069641226904f9757de786a6ab2273eb73ea'})

  -- check color preview
  use ({'norcalli/nvim-colorizer.lua', commit = '36c610a9717cc9ec426a07c8e6bf3b3abcb139d6'})

	-- snap (grep in files)
	use { 'camspiers/snap', commit = '500f97650136d4c5a00179d7f80dd614e13efdbe' }

 
	use { 'tami5/lspsaga.nvim', branch = 'nvim6.0' }
  use({'christoomey/vim-tmux-navigator', commit = '9ca5bfe5bd274051b5dd796cc150348afc993b80'})

	-- finder
 	use {'nvim-telescope/telescope.nvim', commit = 'f262e7d56d37625613c5de0df5a933cccacf13c5'}

	-- enable command like :32 to go to line 32
  use { 'nacro90/numb.nvim', commit = 'c8b128230adb22727256fd24a221f4c5a1b41e93' }

	
  use { 'nvim-pack/nvim-spectre', commit = '8223c970677e4d88c9b6b6d81bda23daf11062bb' }
	use 'ggandor/lightspeed.nvim'

end)
vim.api.nvim_set_keymap('n', '<Leader>h', ':lua require("replacer").run()<cr>', { silent = true })
require('plugins/bufferline')
require('plugins/comp')
require('plugins/commentary')
-- require('plugins/dashboard')
require('plugins/gitsigns')
require('plugins/lsp-config') 
require('plugins/lspkind')
require('plugins/lightspeed')
require('plugins/lualine')
require('plugins/lspsaga')
require('plugins/numb') 
require('plugins/null_ls') 
require('plugins/nvim-colorizer') 
require('plugins/nvim-tree') 
-- require('plugins/nvim-window') 
require('plugins/snap')
require('plugins/nvim-spectre')
-- require('plugins/scrollbar')
require('plugins/telescope')
require('plugins/tmux-navigator')
require('plugins/treesitter')
-- require('plugins/trouble')
-- require('plugins/vim-test')
require('plugins/which-key-nvim')

vim.cmd[[colorscheme tokyonight]]
