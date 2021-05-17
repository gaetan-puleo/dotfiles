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

local packages = {
	-- Package manager
	{name = 'wbthomason/packer.nvim'},

	-- fix cursor for nvim
	{name = 'antoinemadec/FixCursorHold.nvim'},
	{name = 'nvim-lua/popup.nvim'},
	{name = 'nvim-lua/plenary.nvim'},
	{name = 'windwp/nvim-spectre', configFile = 'plugins/nvim-spectre'},
	{name = 'bdchd/neoformat', configFile = 'plugins/neoformat'},
	{name = 'djoshea/vim-autoread'},
	{name = 'tpope/vim-commentary', configFile = 'plugins/commentary'},
	{name = 'liuchengxu/vim-which-key', configFile = 'plugins/nvim-whichkey-setup'},
	{name = 'AckslD/nvim-whichkey-setup.lua'},
	{name = 'nvim-telescope/telescope.nvim', configFile = 'plugins/telescope'},
	{name = 'folke/tokyonight.nvim'},
	{name = 'hoob3rt/lualine.nvim', configFile = 'plugins/lualine'},
	{name = 'lewis6991/gitsigns.nvim', configFile = 'plugins/gitsigns'},
	{name = 'hrsh7th/nvim-compe', configFile = 'plugins/compe'},
	{name = 'hrsh7th/vim-vsnip'},
	{name = 'hrsh7th/vim-vsnip-integ'},
	-- {name = 'rafamadriz/friendly-snippets'},
	{name = 'glepnir/dashboard-nvim', configFile = 'plugins/dashboard'},
	{name = 'nvim-treesitter/nvim-treesitter', configFile = 'plugins/treesitter', packerOptions = {run = ':TSUpdate'}},
	-- {name = 'nvim-treesitter/playground'},
	{name = 'JoosepAlviste/nvim-ts-context-commentstring'},
	{name = 'windwp/nvim-ts-autotag'},
	{name = 'kyazdani42/nvim-tree.lua', configFile = 'plugins/nvim-tree'},
	{name = 'norcalli/nvim-colorizer.lua', configFile = 'plugins/nvim-colorizer'},
	{name = 'akinsho/nvim-bufferline.lua', configFile = 'plugins/bufferline'},
	{name = 'kyazdani42/nvim-web-devicons'},
	{name = 'neovim/nvim-lspconfig', configFile = 'plugins/lsp-config'},
	-- {name = 'justinmk/vim-sneak', configFile = 'plugins/sneak'},
	{name = 'glepnir/lspsaga.nvim', configFile = 'plugins/lspsaga'},
	-- {name = 'simrat39/symbols-outline.nvim', configFile = 'plugins/symbols-outline'},
	{name = 'onsails/lspkind-nvim', configFile = 'plugins/lspkind'},
	{name = 'xabikos/vscode-react'},
	-- {name = 'dsznajder/vscode-es7-javascript-react-snippets'} -- vscode react snippet
	-- {name = 'folke/trouble.nvim', configFile = 'plugins/trouble'},
}

require('packer').startup(function(use)
	for key, value in pairs(packages) do
		local pkg = {}
		pkg[1] = value.name
		
		if value.packerOption then
			pkg = {pkg[1],unpack(value.packerOptions)}
		end
		use(pkg)
	end 

	for key, value in pairs(packages) do
		if value.configFile then
			require(value.configFile)
		end
	end 
end)

vim.cmd[[colorscheme tokyonight]]
