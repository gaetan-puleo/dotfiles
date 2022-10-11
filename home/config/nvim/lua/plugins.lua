-- Install packer
-- local execute = vim.api.nvim_command
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
  use 'nvim-lua/popup.nvim'
  use 'djoshea/vim-autoread' -- Autoread file
  use 'RishabhRD/popfix'

  -- Awesome theme by Folke
  use {
    'folke/tokyonight.nvim',
    config = function ()
      require('plugins/tokyonight')
    end
  }

  -- LSP issues list
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require('plugins/trouble')
    end
  }

  -- Comments
  use {
    'terrortylor/nvim-comment',
    config = function()
      require('plugins/comment')
    end
  }

  -- Fancy icons
  use 'kyazdani42/nvim-web-devicons'

  -- Files tree viewer
  use ({
    'kyazdani42/nvim-tree.lua',
    config = function()
      local config = require('plugins/nvim-tree')

      require('nvim-tree').setup(config)
    end,
  })

  -- show lines modifications
  use {
    'lewis6991/gitsigns.nvim',
      config = function()
        require('plugins/gitsigns')
      end,
  }

  -- completion engines with plugins
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require('plugins/cmp')
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

  -- .editorconfig
  use { "gpanders/editorconfig.nvim" }

  -- LSP server installer
  use { "williamboman/mason.nvim",
    config = function()
      require('plugins/mason')
    end,
    requires = {
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      "williamboman/mason-lspconfig.nvim",
    }
  }

  -- lsp wrapper config
  use({
    'neovim/nvim-lspconfig',
    config = function()
      --require('plugins/lsp-config')
    end,
  })

  -- statusline
  use({
    'nvim-lualine/lualine.nvim',
    config = function()
      require('plugins/lualine')
    end,
  })

  -- bufferline
  use({'akinsho/nvim-bufferline.lua',
    config = function ()
      require('plugins/bufferline')
    end
  })

  -- treesitter a better syntax parser
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

  -- help navigate in nvim and tmux panes
  use({
    'christoomey/vim-tmux-navigator',
    config = function() require('plugins/tmux-navigator') end
  })

  -- global finder
  use {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('plugins/telescope')
    end,
    requires = {
      {'nvim-lua/plenary.nvim'}
    }
  }

  -- show signature help
  use {
    "ray-x/lsp_signature.nvim",
    config = function()
      require('plugins/lsp-signature')
    end
  }

  -- LSP Wrapper to format on save
  use({
    'lukas-reineke/lsp-format.nvim'
  })

  -- Folding
  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async',
    config = function ()
      require('plugins/nvim-ufo')
    end
  }

  -- Show little lightbulb when hint are available
  use {
    'kosayoda/nvim-lightbulb',
      config = function ()
        require('plugins/lsp-lightbulb')
      end
  }

  -- Show Key mapping
  use {
    'folke/which-key.nvim',
      config = function ()
        require('plugins/which-key')
      end
  }

  -- Show and Replace pane
  use {
    'nvim-pack/nvim-spectre',
    config = function ()
      require('plugins/spectre')
    end
  }

  -- Show and Replace pane
  use {
    'tpope/vim-fugitive',
    config = function ()
      require('plugins/fugitive')
    end,
    requires = {
      -- {'tpope/vim-rhubarb'}
    }
  }

  -- Show diff
   use {
    'sindrets/diffview.nvim',
    config = function ()
      require('plugins/diffview')
    end
  }

  use {
    'nvim-neotest/neotest',
    requires = {
      "haydenmeade/neotest-jest"
    },
    config = function ()
      require('plugins/neotest')
    end,
  }

  use {
    'ahmedkhalf/project.nvim',
    config = function ()
      require('plugins/project-nvim')
    end
  }

  use {
    'gelguy/wilder.nvim',
    config = function ()
      require('plugins/wilder-nvim')
    end
  }

end)
