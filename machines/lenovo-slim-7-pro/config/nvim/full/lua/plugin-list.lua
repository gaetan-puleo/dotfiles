local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Git column signs and git blame
    {
        'lewis6991/gitsigns.nvim',
        config = function() require('plugins/gitsigns-nvim') end,
    },

    -- Theme
    {
        'folke/tokyonight.nvim',
        config = function () require('plugins/tokyonight-nvim') end
    },

    -- Status
    {
        'nvim-lualine/lualine.nvim',
        config = function () require('plugins/lualine-nvim') end
    },

    -- treesitter a better syntax parser
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = {
            'JoosepAlviste/nvim-ts-context-commentstring',
            'windwp/nvim-ts-autotag',
            'nvim-treesitter/nvim-treesitter-refactor'
        },
        config = function() require('plugins/treesitter-nvim') end,
    },

    -- Tree file manager
    {
        "nvim-neo-tree/neo-tree.nvim",
        config = function() require('plugins/neo-tree-nvim') end,
        branch = "v2.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          {
            's1n7ax/nvim-window-picker',
            tag = 'v1.5',
            config = function()
              require'window-picker'.setup()
            end,
          },
        }
    },

    -- Lsp config and installer
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate", -- :MasonUpdate updates registry contents
        dependencies = {
          "williamboman/mason-lspconfig.nvim",
          "neovim/nvim-lspconfig",
        },
        config = function()
          require('plugins/lsp/mason-nvim')
        end
    },
    {
      "jay-babu/mason-null-ls.nvim",
      event = { "BufReadPre", "BufNewFile" },
      dependencies = {
        "williamboman/mason.nvim",
        "jose-elias-alvarez/null-ls.nvim",
      },
    },

    -- Completion module
    {
      'hrsh7th/nvim-cmp',
      dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lsp-signature-help',

        -- For luasnip users.
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
      },
      config = function() require('plugins/nvim-cmp') end
    },

    -- Snippets
    {"rafamadriz/friendly-snippets", config = function() require('luasnip.loaders.from_vscode').lazy_load() end, },

    -- Comment
    {
        'terrortylor/nvim-comment',
        config = function() require('plugins/comment-nvim') end
    },

    -- Improve UI
    {'stevearc/dressing.nvim'},

    -- General pickeer tool
    {'nvim-telescope/telescope.nvim', tag = '0.1.1', dependencies = {'nvim-lua/plenary.nvim'}, config = function() require('plugins/telescope-nvim') end}

    -- git diff manager
    -- { 'sindrets/diffview.nvim', dependencies = {'nvim-lua/plenary.nvim'} }
    })
