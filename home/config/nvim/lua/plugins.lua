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

  -- use {
  --   'folke/tokyonight.nvim',
  --     config = function ()
  --       require('plugins/tokyonight')
  --     end
  --   ,
  -- }
  use {
    'folke/tokyonight.nvim',
    config = function ()
      require('plugins/tokyonight')
    end
  }
  -- Lua
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require('plugins/trouble')
    end
  }

  use {
    'terrortylor/nvim-comment',
    config = function()
      require('plugins/comment')
    end
  }


  use 'kyazdani42/nvim-web-devicons'

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

  -- completion
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

  use { "gpanders/editorconfig.nvim" }

  use { "williamboman/mason.nvim",
        config = function()
          require('plugins/mason')
        end,
        requires = {
          'WhoIsSethDaniel/mason-tool-installer.nvim',
          "williamboman/mason-lspconfig.nvim",
        }
      }

  -- lsp
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

  -- better nodejs go to file
  use('PsychoLlama/further.vim')

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

  use({
    'christoomey/vim-tmux-navigator',
    config = function() require('plugins/tmux-navigator') end
  })

  -- finder
  use {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('plugins/telescope')
    end,
    requires = {
      {'nvim-lua/plenary.nvim'}
    }
  }

  use {
    "ray-x/lsp_signature.nvim",
    config = function()
      require('plugins/lsp-signature')
    end
  }
  -- use({
  --   "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  --   config = function()
  --     require("lsp_lines").setup()
  --   end,
  -- })
  use({
    'lukas-reineke/lsp-format.nvim'
  })


  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async',
    config = function ()
      require('plugins/nvim-ufo')
    end
  }

  use {
    'kosayoda/nvim-lightbulb',
      config = function ()
        require('plugins/lsp-lightbulb')
      end
  }

  use {
    'folke/which-key.nvim',
      config = function ()
        require('plugins/which-key')
      end
  }

  -- use({
  --   "glepnir/lspsaga.nvim",
  --   branch = "main",
  --   config = function()
  --     require("plugins/lspsaga")
  --   end,
  -- })


-- need to test
-- https://github.com/0x100101/lab.nvim

end)
