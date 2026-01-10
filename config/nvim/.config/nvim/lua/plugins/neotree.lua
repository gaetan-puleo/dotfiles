return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    {
      's1n7ax/nvim-window-picker',
      version = '2.*',
      config = function()
        require 'window-picker'.setup({
          filter_rules = {
            include_current_win = false,
            autoselect_one = true,
            -- filter using buffer options
            bo = {
              -- if the file type is one of following, the window will be ignored
              filetype = { 'neo-tree', "neo-tree-popup", "notify" },
              -- if the buffer type is one of following, the window will be ignored
              buftype = { 'terminal', "quickfix" },
            },
        },
      })
      end,
    },
  },

  config = function()
    local map = vim.api.nvim_set_keymap

    vim.keymap.set('n', '<leader>fe', "<Cmd>Neotree toggle source=filesystem reveal position=left<CR>", {desc = 'Toggle File [E]xplorer'})
    vim.keymap.set('n', '<leader>bl', "<Cmd>Neotree toggle source=buffers position=left<CR>", {desc = 'Toggle Buffer [L]ist'})
    vim.keymap.set('n', '<leader>gs', "<Cmd>Neotree toggle source=git_status position=left<CR>", {desc = 'Toggle Git [S]tatus'})

    require("neo-tree").setup({
      source_selector = {
        winbar = true,
        statusline = false
      },
      default_component_configs = {
        indent = {
          with_markers = false,
          indent_marker = "│",
          last_indent_marker = "└",
          indent_size = 2,
        },
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      enable_diagnostics = true,
      enable_git_status = true,
      open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
      window = {
        mapping_options = {
          noremap = true,
          nowait = true,
        },
        mappings = {
          ["<cr>"] = "open_with_window_picker",
          ["l"] = "open_with_window_picker",
          ["h"] = "close_node",
          ["<2-LeftMouse>"] = "open_with_window_picker",
          ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
        },
      }
    })
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
  end,
}
