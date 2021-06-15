require'navigator'.setup({
	default_mapping = true,
	lsp = {
		tsserver = {
			filetypes = {'typescript', 'javascript', 'typescriptreact', 'javascriptreact'}
		}
	}
})
