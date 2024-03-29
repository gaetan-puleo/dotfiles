local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Git column signs and git blame
    require('plugins/gitsigns-nvim'),

    --Theme
    {
        'folke/tokyonight.nvim',
        config = function () require('plugins/tokyonight-nvim') end
    },
    -- buffer tabs
    require('plugins/bufferline-nvim'),

    -- dashboard
    require('plugins/mini-starter'),

    -- scroll
    require('plugins/nvim-scrollbar'),

    -- Search
    require('plugins/nvim-hlslens'),


    -- {
    --   'kvrohit/rasmus.nvim',
    --   config = function ()

    --   -- Configure the appearance
    --   vim.g.rasmus_italic_functions = true
    --   vim.g.rasmus_bold_functions = true

    --   -- Set the colorscheme variant to monochrome
    --   vim.g.rasmus_variant = "dark"
    --     vim.cmd [[colorscheme rasmus]]
    --   end
    -- },

    -- {
    --   'mcchrish/zenbones.nvim',
    --   dependencies = "rktjmp/lush.nvim",
    --   config = function ()
    --     vim.cmd [[colorscheme rosebones]]
    --   end
    -- },
    -- {
    --   'rktjmp/lush.nvim'
    -- },

    -- Status
    require('plugins/lualine-nvim'),
    -- indent line
    { 'echasnovski/mini.indentscope', version = '*', config = function ()  require('mini.indentscope').setup() end },

    -- treesitter a better syntax parser
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = {
            'JoosepAlviste/nvim-ts-context-commentstring',
            'windwp/nvim-ts-autotag',
            'nvim-treesitter/nvim-treesitter-refactor',
            'nvim-treesitter/playground'
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

    require('plugins/nvim-lint'),
    require('plugins/formatter-nvim'),
    -- {
    --   "jay-babu/mason-null-ls.nvim",
    --   event = { "BufReadPre", "BufNewFile" },
    --   dependencies = {
    --     "williamboman/mason.nvim",
    --     "jose-elias-alvarez/null-ls.nvim",
    --   },
    -- },

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
    require('plugins/comment-nvim'),

    -- Improve UI
    {'stevearc/dressing.nvim'},

    -- General pickeer tool
    {'nvim-telescope/telescope.nvim', tag = '0.1.1', dependencies = {'nvim-lua/plenary.nvim'}, config = function() require('plugins/telescope-nvim') end},

    {'christoomey/vim-tmux-navigator', config = function() require('plugins/vim-tmux-navigator') end},


    -- keyboard mapping
    require("plugins/which-key"),
    require("plugins/nvim-lightbulb"),

    -- Search and replace
    require('plugins/nvim-spectre'),



    -- git diff manager
    -- { 'sindrets/diffview.nvim', dependencies = {'nvim-lua/plenary.nvim'} }
    })
