vim.opt.runtimepath:append("$HOME/.local/share/treesitter")
require'nvim-treesitter.configs'.setup {
  parser_install_dir = "$HOME/.local/share/treesitter",
  ensure_installed = {
    'javascript',
    'typescript',
    'tsx',
    'html',
    'css',
    'scss',
    'yaml',
    'json',
    'jsonc',
    'lua',
    'markdown',
    'vue',
    'svelte',
    'graphql',
    'solidity',
    -- linux
    'nix',
    'bash',
    'fish',
    -- git
    'cmake',
  },
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
	refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = false },
  },
	highlight = {
    enable = true,
    use_languagetree = true
  }
}
