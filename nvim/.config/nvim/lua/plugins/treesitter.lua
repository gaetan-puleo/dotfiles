require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  ignore_install = {"haskell"},
  autotag = {
		enable = true
	},
	context_commentstring = {
		enable = true,
		config = {
			javascript = {
				__default = '// %s',
				jsx_element = '{/* %s */}',
				jsx_fragment = '{/* %s */}',
				jsx_attribute = '// %s',
				comment = '// %s'
			}
		}
  },
	highlight = {
    enable = true
  },
}
