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

local packages = {
    -- Package manager
    {packer = {'wbthomason/packer.nvim'}},
    -- fix cursor for nvim
		-- {name = 'folke/tokyonight.nvim'},
		{packer = {'gaetan-puleo/tokyonight.nvim'}},
		-- {name = '~/dev/tokyonight.nvim'},
    -- {packer = {'matbme/JABS.nvim'}},
    {packer = {'antoinemadec/FixCursorHold.nvim'}},
    {packer = {'nvim-lua/popup.nvim'}},
    {packer = {'nvim-lua/plenary.nvim'}},
    {packer = {'windwp/nvim-spectre'}, configFile = 'plugins/nvim-spectre'},
    {packer = {'sbdchd/neoformat'}, configFile = 'plugins/neoformat'},
    {packer = {'djoshea/vim-autoread'}},
    {packer = 'tpope/vim-commentary', configFile = 'plugins/commentary'},
		{packer = {'lewis6991/spellsitter.nvim'}, configFile = 'plugins/spellsitter'},
		{packer = {'tpope/vim-fugitive'}},
    {packer = {'folke/which-key.nvim'}, configFile = 'plugins/which-key-nvim'},
    {packer = {'nvim-telescope/telescope.nvim'}, configFile = 'plugins/telescope'},
		{packer = {'PsychoLlama/further.vim'}},

    {packer = {'hoob3rt/lualine.nvim'}, configFile = 'plugins/lualine'},
    {packer = {'lewis6991/gitsigns.nvim'}, configFile = 'plugins/gitsigns'},
    {packer = {'hrsh7th/nvim-compe'}, configFile = 'plugins/compe'},
    {packer = {'hrsh7th/vim-vsnip'}},
    {packer = {'hrsh7th/vim-vsnip-integ'}},
		{packer = {'glepnir/dashboard-nvim'}, configFile = 'plugins/dashboard'},
    {packer = {'nvim-treesitter/nvim-treesitter',run = ':TSUpdate'}, configFile = 'plugins/treesitter'},
    {packer = {'JoosepAlviste/nvim-ts-context-commentstring'}},
    {packer = {'windwp/nvim-ts-autotag'}},
    {packer = {'kyazdani42/nvim-tree.lua'}, configFile = 'plugins/nvim-tree'},
    {packer = {'norcalli/nvim-colorizer.lua'}, configFile = 'plugins/nvim-colorizer'},
    {packer = {'akinsho/nvim-bufferline.lua'}, configFile = 'plugins/bufferline'},
    {packer = {'kyazdani42/nvim-web-devicons'}},
    {packer = {'neovim/nvim-lspconfig'}, configFile = 'plugins/lsp-config'},
		{packer = {'RishabhRD/popfix'}},
    -- {name = 'justinmk/vim-sneak', configFile = 'plugins/sneak'},
    {packer = {'glepnir/lspsaga.nvim'}, configFile = 'plugins/lspsaga'},
    {packer = {'onsails/lspkind-nvim'}, configFile = 'plugins/lspkind'},
    {packer = {'xabikos/vscode-react'}},
    {packer = {'christoomey/vim-tmux-navigator'}, configFile = 'plugins/tmux-navigator'},
 		{packer = {"janko/vim-test"}, configFile = 'plugins/vim-test'},
		{packer = {'tpope/vim-dispatch'}}, -- Run in new buffer
		{packer = {'folke/zen-mode.nvim'}, configFile = 'plugins/zen-mode'}, -- Zen mode
		{packer = {'michaelb/sniprun', run = 'bash ./install.sh'}, configFile = 'plugins/sniprun'},
		-- {packer = {'vijaymarupudi/fzf.vim'}, configFile = 'plugins/fzf'}
		-- {packer = {'yardnsm/vim-import-cost', run = 'npm install'}, configFile = 'plugins/import-cost'},
		-- {packer = {'pianocomposer321/yabs.nvim'}, configFile = 'plugins/yabs'}
}

require('packer').startup(function(use)
    for key, value in pairs(packages) do
			use(value.packer)

    	if value.configFile then
    		require(value.configFile)
    	end
		end 
end)

vim.cmd[[colorscheme tokyonight]]
