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
  use {'antoinemadec/FixCursorHold.nvim'} -- this plugin needs to be here until this issue is fixed (https://github.com/neovim/neovim/issues/12587)
  -- use 'nvim-lua/popup.nvim' 
  -- use 'djoshea/vim-autoread' -- Autoread file
  -- use 'RishabhRD/popfix'

  -- cheatsheets
	use {
		'folke/tokyonight.nvim',
		config = function () 
			require('plugins/tokyonight')
		end,
	}
  
  use 'kyazdani42/nvim-web-devicons'
  -- use {'folke/which-key.nvim'}

  -- nvim tree
  use ({
    'kyazdani42/nvim-tree.lua',
    config = function() 
      local config = require('plugins/nvim-tree')

      require('nvim-tree').setup(config)
    end,
  })

  use {
		'lewis6991/gitsigns.nvim',
		config = function() 
			require('plugins/gitsigns')
		end,
  }
  -- -- comments
	-- use {'tpope/vim-commentary'}

  -- test runners manager
  -- use {'janko/vim-test'}

  
  -- completion
  use { 
    'hrsh7th/nvim-cmp',
    config = function()
      require('plugins/comp')
      require('plugins/lspkind')
    end,
    requires = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'saadparwaiz1/cmp_luasnip',
      'onsails/lspkind-nvim',
      'L3MON4D3/LuaSnip'
    }
  }
	-- use "rafamadriz/friendly-snippets"
  -- lsp
  use({ 'neovim/nvim-lspconfig', 
		config = function() 
			require('plugins/lsp-config')
		end,
		}
	)
  use({ 
		'jose-elias-alvarez/null-ls.nvim',
		config = function()
			require('plugins/null_ls')
		end,
		requires = {
			'jose-elias-alvarez/nvim-lsp-ts-utils'	
		}
	})

  -- statusline
  use({
		'nvim-lualine/lualine.nvim',
		config = function()
			require('plugins/lualine')
		end,
	})

	-- graphql
	-- use('jparise/vim-graphql')
  -- front page
  use({
		'glepnir/dashboard-nvim',
		config = function() 
			require('plugins/dashboard')
		end
	})

  -- bufferline
  use({'akinsho/nvim-bufferline.lua',
    config = function () 
      require('plugins/bufferline')
    end
  })

  -- better nodejs go to file
  -- use('PsychoLlama/further.vim')

  use('mdx-js/mdx')


  -- treesitter
  use({'nvim-treesitter/nvim-treesitter', 
    run = ':TSUpdate', 

    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring',
      'windwp/nvim-ts-autotag',
      'nvim-treesitter/nvim-treesitter-refactor'
    },
    config = function() 
      require('plugins/treesitter') end,
    
  })

  -- check color preview
  -- use ({'norcalli/nvim-colorizer.lua', commit = '36c610a9717cc9ec426a07c8e6bf3b3abcb139d6'})

	-- snap (grep in files)
	-- use { 'camspiers/snap' }

 
	-- use { 'tami5/lspsaga.nvim', branch = 'nvim6.0' }
  use({
    'christoomey/vim-tmux-navigator', 
    config = function() require('plugins/tmux-navigator') end 
  })

	-- finder
 	use {'nvim-telescope/telescope.nvim',
		config = function()
			require('plugins/telescope')
		end,
		requires = {
			{'nvim-lua/plenary.nvim'} 
		}
	}

	-- enable command like :32 to go to line 32
  -- use { 'nacro90/numb.nvim', commit = 'c8b128230adb22727256fd24a221f4c5a1b41e93' }

	
  -- use { 'nvim-pack/nvim-spectre', commit = '8223c970677e4d88c9b6b6d81bda23daf11062bb' }
	-- use 'ggandor/lightspeed.nvim'

end)
-- require('plugins/commentary')
-- require('plugins/dashboard')
-- require('plugins/gitsigns')
-- require('plugins/lsp-config') 
-- require('plugins/lspkind')
-- require('plugins/lightspeed')
-- require('plugins/lualine')
-- require('plugins/lspsaga')
-- require('plugins/numb') 
-- require('plugins/null_ls') 
-- require('plugins/nvim-colorizer') 
-- require('plugins/snap')
-- require('plugins/nvim-spectre')
-- require('plugins/telescope')
-- require('plugins/which-key-nvim')

