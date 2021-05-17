local map = vim.api.nvim_set_keymap

require'nvim-treesitter.configs'.setup {
	options = {
		-- auto_close = true,
		auto_open = true,
		indent_lines = false,
		use_lsp_diagnostic_signs = true,
	}
}
map('n', 'gr', [[<cmd>Trouble lsp_references<cr>]], { noremap = true, silent = true})
