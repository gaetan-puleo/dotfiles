return { 'echasnovski/mini.nvim', version = '*',
    config = function ()
        -- require('mini.starter').setup()
        require('mini.cursorword').setup()
        require('mini.extra').setup()
        -- require('mini.tabline').setup({
        --   show_icons = true,
        --   tabpage_section = 'left',
        -- })
        -- require('mini.indentscope').setup()
        require('mini.icons').setup()
        require('mini.git').setup()

        local win_config = function()
          local height = 15
          local width = math.floor(0.618 * vim.o.columns)
          return {
            border = "solid",
            anchor = 'NW', height = height, width = width,
            row = 1,
            -- row = math.floor(0.5 * (vim.o.lines - height)),
            col = math.floor(0.5 * (vim.o.columns - width)),
          }
        end

        require('mini.pick').setup({
          window = {
            config = win_config
          },
        })
        vim.api.nvim_set_keymap('n', '<leader>ff', ":Pick files<CR>", { noremap = true, silent = true, desc = 'Choose a [F]ile'  })
        vim.api.nvim_set_keymap('n', '<C-p>', ":Pick files<CR>", { noremap = true, silent = true, desc = 'Choose a [F]ile'  })
        vim.api.nvim_set_keymap('n', '<leader>fg', ":Pick grep_live<CR>", { noremap = true, silent = true, desc = '[G]rep files' })
        vim.api.nvim_set_keymap('n', '<leader><leader>', ":Pick buffers<CR>", { noremap = true, silent = true, desc = "Choose a buffer" })



        require('mini.diff').setup({
          view = {
            style = 'sign',
            signs = { add = '▎', change = '▎', delete = '▎' },
          }
        })

        -- auto complete
        require('mini.completion').setup({
          delay = { completion = 100, info = 100, signature = 50 },

        })
        require('mini.hipatterns').setup()

        require('mini.comment').setup({
          options = {
            custom_commentstring = function()
              return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
            end,
          },
          mappings = {
            -- toggle comment 
            comment = '<M-/>',

            -- current line
            comment_line = '<M-/>',

            -- Toggle comment on visual selection
            comment_visual = '<M-/>',

            -- Define 'comment' textobject (like `dgc` - delete whole comment block)
            -- Works also in Visual mode if mapping differs from `comment_visual`
            textobject = '<M-/>',
          }
        })
        local miniclue = require('mini.clue')
        miniclue.setup({
          window = {
            delay = 50,
          },
          triggers = {
            -- Leader triggers
            { mode = 'n', keys = '<Leader>' },
            { mode = 'x', keys = '<Leader>' },

            -- Built-in completion
            -- { mode = 'i', keys = '<C-x>' },

            -- `g` key
            -- { mode = 'n', keys = 'g' },
            -- { mode = 'x', keys = 'g' },

            -- Marks
            -- { mode = 'n', keys = "'" },
            -- { mode = 'n', keys = '`' },
            -- { mode = 'x', keys = "'" },
            -- { mode = 'x', keys = '`' },

            -- Registers
            -- { mode = 'n', keys = '"' },
            -- { mode = 'x', keys = '"' },
            -- { mode = 'i', keys = '<C-r>' },
            -- { mode = 'c', keys = '<C-r>' },

            -- -- Window commands
            -- { mode = 'n', keys = '<C-w>' },

            -- `z` key
            -- { mode = 'n', keys = 'z' },
            -- { mode = 'x', keys = 'z' },
          },

          clues = {
            {
              mode = "n", keys = '<Leader>b', desc = '+ Buffers'
            },
            {
              mode = "n", keys = '<Leader>f', desc = '+ Files'
            },
            {
              mode = "n", keys = '<Leader>g', desc = '+ Git'
            },

            {
              mode = "n", keys = '<Leader>a', desc = '+ AI'
            },

            {
              mode = "n", keys = '<Leader>l', desc = '+ LSP'
            },
            -- Enhance this by adding descriptions for <Leader> mapping groups
            miniclue.gen_clues.builtin_completion(),
            miniclue.gen_clues.g(),
            miniclue.gen_clues.marks(),
            miniclue.gen_clues.registers(),
            miniclue.gen_clues.windows(),
            miniclue.gen_clues.z(),
          },
        })
        require('mini.statusline').setup({
        })
    end,
}
