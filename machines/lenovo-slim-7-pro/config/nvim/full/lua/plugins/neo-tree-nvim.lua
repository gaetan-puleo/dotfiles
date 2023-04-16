
local map = vim.api.nvim_set_keymap

map('n', '<leader>fe', "<Cmd>Neotree toggle source=filesystem<CR>", { })
map('n', '<leader>fg', "<Cmd>Neotree toggle source=git_status<CR>", { })
map('n', '<leader>fb', "<Cmd>Neotree toggle source=buffers<CR>", { })

require("neo-tree").setup({
    default_component_configs = {
      indent = {
        with_markers = false,
        indent_marker = "│",
        last_indent_marker = "└",
        indent_size = 2,
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
            ["<2-LeftMouse>"] = "open_with_window_picker"
        },
    }
})

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
