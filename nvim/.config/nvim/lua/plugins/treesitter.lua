require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  ignore_install = {"haskell"},
  autotag = {
		enable = true
	},
	context_commentstring = {
    enable = true
  },
	highlight = {
    enable = true
  },
}
