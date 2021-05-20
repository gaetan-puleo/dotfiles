local wk = require("which-key")

wk.register({
	c = {
		a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', 'Show code actions'}
	},
	g = {
		d = {'<Cmd>lua vim.lsp.buf.definition()<CR>', 'Go to definition'},
		t = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Go to type definition" },
		r = {'<cmd>lua require(\'lspsaga.provider\').lsp_finder()<CR>', 'Show references'},
		R = {"<cmd>lua vim.lsp.buf.rename()<CR>", "Rename references"},
		s = {"<cmd>lua vim.lsp.buf.signature_help()<CR>", "Show signature"},
	},
	['<leader>'] = {
		['/'] = 'Comment',
		['1'] = "which_key_ignore",
		['2'] = "which_key_ignore",
		['3'] = "which_key_ignore",
		['4'] = "which_key_ignore",
		['5'] = "which_key_ignore",
		['6'] = "which_key_ignore",
		['7'] = "which_key_ignore",
		['8'] = "which_key_ignore",
		['9'] = "which_key_ignore",
		['0'] = "which_key_ignore",
		f = {
			name = '+Files / Find',
			e = {':NvimTreeToggle<CR>', 'Open file tree'},
			s = {':NvimTreeFindFile<CR>', 'Show current file in file tree'},
			o = {"<cmd>lua require('telescope.builtin').oldfiles()<cr>", 'Search recently used file'},
			p = {"<cmd>lua require('telescope.builtin').find_files({hidden = true, ignore = true})<cr>]", 'Search for a specific file'},
			g = {"<cmd>lua require('telescope.builtin').live_grep({hidden = true, ignore = true})<cr>]", 'Search in files'},
			r = {"<cmd>lua require('spectre').open()<cr>]", 'Search and replace in files'},
		},
		b = {
			name = '+Buffers',
			l = {"<cmd>lua require('telescope.builtin').buffers()<cr>", "List buffers"},
			f = {"<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>", "Search in current buffer"},
		},
		t = {
			name = '+Tests',
			n = {'<cmd>TestNearest<CR>', 'Test nearest test'},
			f = {'<cmd>TestFile<CR>', 'Test file'}, 
			s = {'<cmd>TestSuite<CR>', 'Test Suite'}, 
			l = {'<cmd>TestLast<CR>', 'Test last test run'}, 
			v = {'<cmd>TestVisit<CR>', 'Test visit'}, 
		},
		c = {
			name = '+Code',
			r = {"<cmd>SnipRun <cr>", "Run code"}
		},
		g = {
			name = '+Git',
			s = {"<cmd>Git <CR>", "Git status"},
			b = {"<cmd>Git blame <CR>", "Git blame"},
			d = {"<cmd>Gvdiffsplit  <CR>", "Git diff"}
		},
		-- d = {
		-- 	name = '+debugger',
		-- 	u =  {"<cmd>lua require('dapui').toggle()<cr>", "Toggle debugger UI"},
		-- 	h =  {"<cmd>lua require('dap').toggle_breakpoint()<cr>", "Toggle breakpoint"},
		-- 	r = {"<cmd>lua require('dap').repl.open({})<cr>"}
		-- },
		w = {
			name = '+Windows',
			z = {':ZenMode<cr>', 'Zen mode'}
		},
		['-'] = 'Split vertically',
		['\\'] = 'Split horizontally'
	}
}, {
	mode = 'n'
})

wk.register({
	['<leader>'] = {
		c = {
			name = '+code',
			r = {":'<,'>SnipRun <cr>", "Run code"}
		},
	}
},{
	mode = 'v'
})

