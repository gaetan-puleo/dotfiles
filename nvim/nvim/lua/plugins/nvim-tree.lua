local tree_cb = require'nvim-tree.config'.nvim_tree_callback

-- local circles = require('circles')
-- circles.setup({ icons = { empty = '', filled = '', lsp_prefix = '' } })

local map = vim.api.nvim_set_keymap
local list = {
	{key = "<CR>",           cb = tree_cb("edit")},
	{key = "<2-LeftMouse>",  cb = tree_cb("edit")},
	{key = "l",              cb = tree_cb("edit")},
	{key = "h",              cb = tree_cb("close_node")},
	{key = "I",              cb = tree_cb("toggle_ignored")},
	{key = "H",              cb = tree_cb("toggle_dotfiles")},
	{key = "R",              cb = tree_cb("refresh")},
	{key = "a",              cb = tree_cb("create")},
	{key = "d",              cb = tree_cb("remove")},
	{key = "r",              cb = tree_cb("rename")},
	{key = "x",              cb = tree_cb("cut")},
	{key = "y",              cb = tree_cb("copy")},
	{key = "p",              cb = tree_cb("paste")},
	{key = "?",              cb = tree_cb("toggle_help")},
}

map('n', '<leader>fe', ':NvimTreeToggle<CR>', {})
map('n', '<leader>fs', ':NvimTreeFindFile<CR>', {})

-- vim.g['nvim_tree_disable_netrw'] = 1 -- disable netrw
-- vim.g['nvim_tree_hijack_netrw'] = 1 -- use nvim-tree vhen typing `nvim` or `nvim .`
-- vim.g['nvim_tree_lsp_diagnostics'] = 1 -- show lsp diagnostic
-- vim.g['nvim_tree_auto_close'] = 0 -- close if last window
-- vim.g['nvim_tree_git_hl'] = 1 -- highlight open
-- vim.g['nvim_tree_show_icons'] = {
--   git = 1,
--   folders = 1,
--   files = 1,
-- }

-- vim.g['nvim_tree_icons'] = {
--   default = '',
--   symlink = '',
--   git = {
--     unstaged = "M",
--     staged = "✓",
--     unmerged = "",
--     renamed = "➜",
--     untracked = "U",
--     deleted = "D",
--     ignored = "◌",
--   },
--   folder = {
--     default = "",
--     open = "",
--     empty = "",
--     empty_open = "",
--     symlink = "",
--     symlink_open = "",
--   },
--   lsp = {
--     hint = "",
--     info = "",
--     warning = "",
--     error = "",
--   }
-- }

return  {
  -- disables netrw completely
  disable_netrw = true,
  -- hijack netrw window on startup
  hijack_netrw = true,
  -- open the tree when running this setup function
  open_on_setup = false,
  -- closes neovim automatically when the tree is the last **WINDOW** in the view
  
  view = {
    mappings = { list = list },
		signcolumn = 'yes'
  },
  renderer = {
	icons = {
		git_placement = "signcolumn",
		glyphs = {
		  	default = '',
		  	symlink = '',
		  	git = {
					unstaged = "",
					staged = "",
					unmerged = "",
					renamed = "",
					untracked = "",
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
			}

		}
  }
}
