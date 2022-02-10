local map = vim.api.nvim_set_keymap

require'bufferline'.setup{
	options = {
		separator_style = "slant",
		offsets = {{filetype = "NvimTree", text = " NvimTree", highlight = "BufferLineFill", text_align = "center"}},
		always_show_bufferline = true,
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level, diagnostics_dict)
			return "("..count..")"
		end
	}
}

-- map('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>', {})
-- map('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>', {})
-- map('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>', {})
-- map('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>', {})
-- map('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>', {})
-- map('n', '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>', {})
-- map('n', '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>', {})
-- map('n', '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>', {})
-- map('n', '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>', {})
map('n', '<leader>p', '<Cmd>BufferLinePick<CR>', {})
map('n', '<leader>c', '<Cmd>BufferLinePickClose<CR>', {})
