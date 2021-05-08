local tree_cb = require'nvim-tree.config'.nvim_tree_callback
local map = vim.api.nvim_set_keymap
vim.g.nvim_tree_bindings = {
  ["<CR>"]           = tree_cb("edit"),
  ["<2-LeftMouse>"]  = tree_cb("edit"),
  ["h"]              = tree_cb("close_node"),
  ["l"]              = tree_cb("edit"),
  ["I"]              = tree_cb("toggle_ignored"),
  ["H"]              = tree_cb("toggle_dotfiles"),
  ["R"]              = tree_cb("refresh"),
  ["a"]              = tree_cb("create"),
  ["d"]              = tree_cb("remove"),
  ["r"]              = tree_cb("rename"),
  ["x"]              = tree_cb("cut"),
  ["y"]              = tree_cb("copy"),
  ["p"]              = tree_cb("paste"),
}

map('n', '<leader>fe', ':NvimTreeToggle<CR>', {})
map('n', '<leader>fs', ':NvimTreeFindFile<CR>', {})

vim.g['nvim_tree_disable_netrw'] = 1 -- disable netrw
vim.g['nvim_tree_hijack_netrw'] = 1 -- use nvim-tree vhen typing `nvim` or `nvim .`

vim.g['nvim_tree_show_icons'] = {
  git = 0,
  folders = 1,
  files = 1,
}

vim.g['nvim_tree_icons'] = {
  default = '',
  symlink = '',
  git = {
    unstaged = "M",
    staged = "✓",
    unmerged = "",
    renamed = "➜",
    untracked = "U",
    deleted = "D",
    ignored = "◌",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
  },
  lsp = {
    hint = "",
    info = "",
    warning = "",
    error = "",
  }
}
