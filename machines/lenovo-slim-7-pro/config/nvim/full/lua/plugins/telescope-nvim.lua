local builtin = require('telescope.builtin')

local actions = require("telescope.actions")
require("telescope").setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  },
  pickers = {
    find_files = {
      sorting_strategy = 'ascending',
      prompt_title = false,
      previewer = false,
      hidden = true,  -- incluse hidden files
      ignore = true,  -- incluse hidden files
      layout_strategy = 'vertical',
      layout_config = {
        vertical = {
          anchor = "N", -- pin to top (N like nord)
          height = 0.5, -- 0.1 equal 10%
          prompt_position = "top",
          width = 0.5 -- 0.1 equal 10%
        },
      },
    }
  },
}

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


