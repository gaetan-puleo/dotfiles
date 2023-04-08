local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- Example using a list of specs with the default options
-- vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  -- Show Key mapping
  {
    'folke/which-key.nvim',
    config = function ()
      require('plugins/which-key')
    end
  },

  -- show lines modifications
  {
    'lewis6991/gitsigns.nvim',
      config = function()
        require('plugins/gitsigns')
      end,
  },

  -- completion engines with plugins
  {
    'hrsh7th/nvim-cmp',
    config = function()
      require('plugins/cmp')
      require('plugins/lspkind')
    end,
    dependencies = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'onsails/lspkind-nvim',
      'L3MON4D3/LuaSnip',
      -- "jcdickinson/codeium.nvim",
      'Exafunction/codeium.vim',
    }
  },

  -- .editorconfig
  { "gpanders/editorconfig.nvim" },
  -- { "Exafunction/codeium.vim" },
  -- {
    -- "jcdickinson/http.nvim",
    -- run = "cargo build --workspace --release"
  -- },

  -- LSP server installer
  { "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    config = function()
      require('plugins/mason')
    end,
    dependencies = {
      -- 'WhoIsSethDaniel/mason-tool-installer.nvim',
      "williamboman/mason-lspconfig.nvim",
      'neovim/nvim-lspconfig',
      "jose-elias-alvarez/null-ls.nvim",
      "jay-babu/mason-null-ls.nvim",
      "lukas-reineke/lsp-format.nvim"
    }
  },

  -- File Tree
  {
    'kyazdani42/nvim-tree.lua',
    config = function()
      local config = require('plugins/nvim-tree')

      require('nvim-tree').setup(config)
    end,
  },

  -- theme
  {
    'folke/tokyonight.nvim',
    config = function ()
      require('plugins/tokyonight')
    end
  },

  -- Scrollbar
  {"petertriho/nvim-scrollbar",
    config = function ()
      require('plugins/nvim-scrollbar')
    end,
  },

    -- treesitter a better syntax parser
  {'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',

    dependencies = {
      'JoosepAlviste/nvim-ts-context-commentstring',
      'windwp/nvim-ts-autotag',
      'nvim-treesitter/nvim-treesitter-refactor'
    },
    config = function()
      require('plugins/treesitter') end,
  },


  -- -- better menu
  -- {
  --   'gelguy/wilder.nvim',
  --   config = function ()
  --     require('plugins/wilder-nvim')
  --   end
  -- },

  -- statusline
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('plugins/lualine')
    end,
  },

  -- bufferline
  {'akinsho/nvim-bufferline.lua',
    config = function ()
      require('plugins/bufferline')
    end
  },

  -- help navigate in nvim and tmux panes
  {
    'christoomey/vim-tmux-navigator',
    config = function() require('plugins/tmux-navigator') end
  },

   -- global finder
  {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('plugins/telescope')
    end,
    dependencies = {
      {'nvim-lua/plenary.nvim'}
    }
  },

  -- Show diff
  {
    'sindrets/diffview.nvim',
    config = function ()
      require('plugins/diffview')
    end
  },

  -- Add tests
  {
    'nvim-neotest/neotest',
    dependencies = {
      "haydenmeade/neotest-jest"
    },
    config = function ()
      require('plugins/neotest')
    end,
  },

  -- Code screenshot
  {
    "ellisonleao/carbon-now.nvim",
    config = function() require('plugins/carbon-now')
    end
  },


  -- Comments
  {
    'terrortylor/nvim-comment',
    config = function()
      require('plugins/comment')
    end
  },

  -- icons
  { 'kyazdani42/nvim-web-devicons' },


  -- Show little lightbulb when hint are available
  {
    'kosayoda/nvim-lightbulb',
      config = function ()
        require('plugins/lsp-lightbulb')
      end
  },

  -- Show and Replace pane
  {
    'nvim-pack/nvim-spectre',
    config = function ()
      require('plugins/spectre')
    end
  },


  {
    "folke/trouble.nvim",
--     requires = "kyazdani42/nvim-web-devicons",
    dependencies = {
      "kyazdani42/nvim-web-devicons"
    },
    config = function()
      require('plugins/trouble')
    end
  }
})


-- Install packer
-- local execute = vim.api.nvim_command
-- local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

-- if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
--   execute('!git clone https://github.com/wbthomason/packer.nvim '.. install_path)
-- end

-- vim.api.nvim_exec([[
--   augroup Packer
--     autocmd!
--     autocmd BufWritePost init.lua PackerCompile
--   augroup end
-- ]], false)

-- require('packer').startup(function()
--   use 'wbthomason/packer.nvim' -- packager for neovim
--   use {'antoinemadec/FixCursorHold.nvim'} -- this plugin needs to be here until this issue is fixed (https://github.com/neovim/neovim/issues/12587)
--   use 'nvim-lua/popup.nvim'
--   use 'djoshea/vim-autoread' -- Autoread file
--   use 'RishabhRD/popfix'


--   -- Scrollbar
--   use({"petertriho/nvim-scrollbar",
--     config = function ()
--       require('plugins/nvim-scrollbar')
--     end,
--   })

-- use {
--   "utilyre/barbecue.nvim",
--   requires = {
--     "kyazdani42/nvim-web-devicons", -- optional
--   },
--   config = function()
--     require("barbecue").setup(
-- {
--   ---whether to attach navic to language servers automatically
--   ---@type boolean
--   attach_navic = false,

--   ---whether to create winbar updater autocmd
--   ---@type boolean
--   create_autocmd = true,

--   ---buftypes to enable winbar in
--   ---@type string[]
--   include_buftypes = { "" },

--   ---filetypes not to enable winbar in
--   ---@type string[]
--   exclude_filetypes = { "toggleterm" },

--   ---returns a string to be shown at the end of winbar
--   ---@type fun(bufnr: number): number|string
--   custom_section = function()
--     return ""
--   end,

--   modifiers = {
--     ---filename modifiers applied to dirname
--     ---@type string
--     dirname = ":~:.",

--     ---filename modifiers applied to basename
--     ---@type string
--     basename = "",
--   },

--   ---icons used by barbecue
--   ---@type table<string, string>
--   symbols = {
--     ---entry separator
--     ---@type string
--     separator = ">",

--     ---modification indicator
--     ---`false` to disable
--     ---@type false|string
--     modified = false,

--     ---context placeholder for the root node
--     ---`false` to disable
--     ---@type false|string
--     default_context = "…",
--   },

--   ---icons for different context entry kinds
--   ---@type table<string, string>
--   kinds = {
--         File          = " ",
--         Module        = " ",
--         Namespace     = " ",
--         Package       = " ",
--         Class         = " ",
--         Method        = " ",
--         Property      = " ",
--         Field         = " ",
--         Constructor   = " ",
--         Enum          = "練",
--         Interface     = "練",
--         Function      = " ",
--         Variable      = " ",
--         Constant      = " ",
--         String        = " ",
--         Number        = " ",
--         Boolean       = "◩ ",
--         Array         = " ",
--         Object        = " ",
--         Key           = " ",
--         Null          = "ﳠ ",
--         EnumMember    = " ",
--         Struct        = " ",
--         Event         = " ",
--         Operator      = " ",
--         TypeParameter = " ",
--   },
-- }
--     )
--   end,
-- }

--   -- Awesome theme by Folke
--   use {
--     'folke/tokyonight.nvim',
--     config = function ()
--       require('plugins/tokyonight')
--     end
--   }

--   -- LSP issues list
--   use {
--     "folke/trouble.nvim",
--     requires = "kyazdani42/nvim-web-devicons",
--     config = function()
--       require('plugins/trouble')
--     end
--   }

--   -- Comments
--   use {
--     'terrortylor/nvim-comment',
--     config = function()
--       require('plugins/comment')
--     end
--   }

--   -- Fancy icons
--   use 'kyazdani42/nvim-web-devicons'

--   -- Files tree viewer
--   use ({
--     'kyazdani42/nvim-tree.lua',
--     config = function()
--       local config = require('plugins/nvim-tree')

--       require('nvim-tree').setup(config)
--     end,
--   })

--   -- show lines modifications
--   use {
--     'lewis6991/gitsigns.nvim',
--       config = function()
--         require('plugins/gitsigns')
--       end,
--   }

--   -- completion engines with plugins
--   use {
--     'hrsh7th/nvim-cmp',
--     config = function()
--       require('plugins/cmp')
--       require('plugins/lspkind')
--     end,
--     requires = {
--       'hrsh7th/cmp-buffer',
--       'hrsh7th/cmp-nvim-lsp',
--       'saadparwaiz1/cmp_luasnip',
--       'onsails/lspkind-nvim',
--       'L3MON4D3/LuaSnip'
--     }
--   }

--   -- .editorconfig
--   use { "gpanders/editorconfig.nvim" }

--   -- LSP server installer
--   use { "williamboman/mason.nvim",
--     config = function()
--       require('plugins/mason')
--     end,
--     requires = {
--       'WhoIsSethDaniel/mason-tool-installer.nvim',
--       "williamboman/mason-lspconfig.nvim",
--       "smiteshp/nvim-navic",
--     }
--   }

--   -- lsp wrapper config
--   use({
--     'neovim/nvim-lspconfig',
--     config = function()
--       --require('plugins/lsp-config')
--     end,
--   })

--   -- statusline
--   use({
--     'nvim-lualine/lualine.nvim',
--     config = function()
--       require('plugins/lualine')
--     end,
--   })

--   -- bufferline
--   use({'akinsho/nvim-bufferline.lua',
--     config = function ()
--       require('plugins/bufferline')
--     end
--   })

--   -- treesitter a better syntax parser
--   use({'nvim-treesitter/nvim-treesitter',
--     run = ':TSUpdate',

--     requires = {
--       'JoosepAlviste/nvim-ts-context-commentstring',
--       'windwp/nvim-ts-autotag',
--       'nvim-treesitter/nvim-treesitter-refactor'
--     },
--     config = function()
--       require('plugins/treesitter') end,

--   })

--   -- help navigate in nvim and tmux panes
--   use({
--     'christoomey/vim-tmux-navigator',
--     config = function() require('plugins/tmux-navigator') end
--   })

--   -- global finder
--   use {
--     'nvim-telescope/telescope.nvim',
--     config = function()
--       require('plugins/telescope')
--     end,
--     requires = {
--       {'nvim-lua/plenary.nvim'}
--     }
--   }

--   -- show signature help
--   use {
--     "ray-x/lsp_signature.nvim",
--     config = function()
--       require('plugins/lsp-signature')
--     end
--   }

--   -- LSP Wrapper to format on save
--   use({
--     'lukas-reineke/lsp-format.nvim'
--   })

--   -- Folding
--   use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async',
--     config = function ()
--       require('plugins/nvim-ufo')
--     end
--   }

--   -- Show little lightbulb when hint are available
--   use {
--     'kosayoda/nvim-lightbulb',
--       config = function ()
--         require('plugins/lsp-lightbulb')
--       end
--   }

--   -- Show Key mapping
--   use {
--     'folke/which-key.nvim',
--       config = function ()
--         require('plugins/which-key')
--       end
--   }

--   -- Show and Replace pane
--   use {
--     'nvim-pack/nvim-spectre',
--     config = function ()
--       require('plugins/spectre')
--     end
--   }

--   -- Show and Replace pane
--   use {
--     'tpope/vim-fugitive',
--     config = function ()
--       require('plugins/fugitive')
--     end,
--     requires = {
--       -- {'tpope/vim-rhubarb'}
--     }
--   }

--   -- Show diff
--    use {
--     'sindrets/diffview.nvim',
--     config = function ()
--       require('plugins/diffview')
--     end
--   }

--   -- Add tests
--   use {
--     'nvim-neotest/neotest',
--     requires = {
--       "haydenmeade/neotest-jest"
--     },
--     config = function ()
--       require('plugins/neotest')
--     end,
--   }

--   -- -- Add project list
--   -- use {
--   --   'ahmedkhalf/project.nvim',
--   --   config = function ()
--   --     require('plugins/project-nvim')
--   --   end
--   -- }

--   -- improve wild menu
--   use {
--     'gelguy/wilder.nvim',
--     config = function ()
--       require('plugins/wilder-nvim')
--     end
--   }

--   -- Terminal
--   use {"akinsho/toggleterm.nvim", tag = '*', config = function()
--     require("plugins/toggleterm")
--   end}


--   use {"ellisonleao/carbon-now.nvim",
--     config = function() require('plugins/carbon-now')
--   end}

--   use {
--     "folke/zen-mode.nvim",
--     config = function()
--       require('plugins.zen-mode')
--     end
--   }

--   use {
--     "folke/twilight.nvim",
--     config = function()
--       require("twilight").setup {
--         -- your configuration comes here
--         -- or leave it empty to use the default settings
--         -- refer to the configuration section below
--       }
--     end
--   }

--   -- use {"lukas-reineke/indent-blankline.nvim",
--   --  config = function() require('plugins/indent-blankline')
--   --end}
--   -- -- Dap
--   -- use {
--   --   'mfussenegger/nvim-dap',
--   --   config = function ()
--   --     require('plugins/nvim-dap')
--   --   end
--   -- }

--   -- use { "mxsdev/nvim-dap-vscode-js" }

--   -- use { "rcarriga/nvim-dap-ui" }

--   -- use {
--   --   "microsoft/vscode-js-debug",
--   --   opt = true,
--   --   run = "npm install --legacy-peer-deps && npm run compile"
--   -- }

-- end)
