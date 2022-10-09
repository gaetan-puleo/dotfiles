-- local wk = require("which-key")

require("which-key").setup { -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}

local wk = require("which-key")

wk.register({

  ['<leader>'] = {
    ["<space>"] = 'Show previous buffer',
    c = 'Pick and close the selected buffer',
    p = 'Pick and switch to the selected buffer',
    f = {
      name = '+Files / Find',
			e = 'Open file tree panel',
      g = 'Grep / Search in files',
 			s = 'Show current file in file tree panel',
    },
    g = {
      name = '+Git',
 			s = 'Show status (git status)',
 			l = 'Show commit history (git log)',
 			b = 'Git blame',
    },
    s = {
      name = '+Search',
      r = 'Global search and replace'
    },
  }
})
-- wk.register({
-- 	c = 'pick and close a buffer',
-- 	p = 'pick and choose a buffer',
-- 	g = {
-- 		d = 'Go to definition',
-- 		-- t = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Go to type definition" },
-- 		-- r = {'<cmd>lua require(\'lspsaga.provider\').lsp_finder()<CR>', 'Show references'},
-- 		R = "Rename references",
-- 		s = "Show signature",
-- 	},
-- 	['<leader>'] = {
-- 		['/'] = 'Comment',
-- 		['1'] = "which_key_ignore",
-- 		['2'] = "which_key_ignore",
-- 		['3'] = "which_key_ignore",
-- 		['4'] = "which_key_ignore",
-- 		['5'] = "which_key_ignore",
-- 		['6'] = "which_key_ignore",
-- 		['7'] = "which_key_ignore",
-- 		['8'] = "which_key_ignore",
-- 		['9'] = "which_key_ignore",
-- 		['0'] = "which_key_ignore",
-- 		f = {
-- 			name = '+Files / Find',
-- 			e = 'Open file tree',
-- 			s = 'Show current file in file tree',
-- 			-- o = {"<cmd>lua require('telescope.builtin').oldfiles()<cr>", 'Search recently used file'},
-- 			-- p = {"<cmd>lua require('telescope.builtin').find_files({hidden = true, ignore = true})<cr>", 'Search for a specific file'},
-- 			-- g = {"<cmd>lua require('telescope.builtin').live_grep({hidden = true, ignore = true})<cr>", 'Search in files'},
-- 			-- g = 'Search in files',
-- 			-- r = {"<cmd>lua require('spectre').open()<cr>", 'Search and replace in files'},
-- 		},
-- 		b = {
-- 			name = '+Buffers',
-- 			l = {"<cmd>lua require('telescope.builtin').buffers()<cr>", "List buffers"},
-- 			-- l = {"<cmd>JABSOpen<cr>", "List buffers"},
-- 			f = {"<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>", "Search in current buffer"},
-- 		},
-- 		-- t = {
-- 		-- 	name = '+Tests',
-- 		-- 	n = {'<cmd>TestNearest<CR>', 'Test nearest test'},
-- 		-- 	f = {'<cmd>TestFile<CR>', 'Test file'},
-- 		-- 	s = {'<cmd>TestSuite<CR>', 'Test Suite'},
-- 		-- 	l = {'<cmd>TestLast<CR>', 'Test last test run'},
-- 		-- 	v = {'<cmd>TestVisit<CR>', 'Test visit'},
-- 		-- },
-- 		g = {
-- 			name = '+Git',
-- 			s = {"<cmd>Git <CR>", "Git status"},
-- 			b = {"<cmd>Git blame <CR>", "Git blame"},
-- 			d = {"<cmd>Gvdiffsplit  <CR>", "Git diff"}
-- 		},
-- 		-- d = {
-- 		-- 	name = '+debugger',
-- 		-- 	u =  {"<cmd>lua require('dapui').toggle()<cr>", "Toggle debugger UI"},
-- 		-- 	h =  {"<cmd>lua require('dap').toggle_breakpoint()<cr>", "Toggle breakpoint"},
-- 		-- 	r = {"<cmd>lua require('dap').repl.open({})<cr>"}
-- 		-- },
-- 		-- z = {':ZenMode<cr>', 'Zen mode'},
-- 		['-'] = 'Split vertically',
-- 		['\\'] = 'Split horizontally'
-- 	}
-- }, {
-- 	mode = 'n'
-- })

-- wk.register({
-- 	['<leader>'] = {
-- 	}
-- },{
-- 	mode = 'v'
-- })
