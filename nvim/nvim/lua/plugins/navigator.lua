require'navigator'.setup({
	default_mapping = false,
	lsp = {
		tsserver = {
			filetypes = {'typescript', 'javascript', 'typescriptreact', 'javascriptreact'}
		}
	}
})
