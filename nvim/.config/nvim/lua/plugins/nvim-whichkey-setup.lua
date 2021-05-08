local wk = require('whichkey_setup')

require("whichkey_setup").config{
    hide_statusline = true,
    -- default_keymap_settings = {
    --     silent=true,
    --     noremap=true,
    -- },
    default_mode = 'n',
}
vim.g.which_key_use_floating_win = 0 -- don't use floatting windows
vim.g.which_key_fallback_to_native_key = 1 -- use native fallback
local leaderKeymap = {
	['/'] = 'Comment',
    ['1'] = 'which_key_ignore',
    ['2'] = 'which_key_ignore',
    ['3'] = 'which_key_ignore',
    ['4'] = 'which_key_ignore',
    ['5'] = 'which_key_ignore',
    ['6'] = 'which_key_ignore',
    ['7'] = 'which_key_ignore',
    ['8'] = 'which_key_ignore',
    ['9'] = 'which_key_ignore',
    -- ['1'] = 'Go to buffer 1',
    -- ['2'] = 'Go to buffer 2',
    -- ['3'] = 'Go to buffer 3',
    -- ['4'] = 'Go to buffer 4',
    -- ['5'] = 'Go to buffer 5',
    -- ['6'] = 'Go to buffer 6',
    -- ['7'] = 'Go to buffer 7',
    -- ['8'] = 'Go to buffer 8',
    -- ['9'] = 'Go to buffer 9',
    f = {
		name = '+file',
		e = 'File tree view',
		s = 'Find current file in tree view',
		o = 'Recently Used',
		p = 'Find file',
		b = 'Files currently open',
    },
	g = {
		name = '+git',
		b = 'List branches',
		s = 'Current status',
		c = 'List commits',
		p = 'Commits changes',
	},
	r = {
		name = '+run',
		e = 'Enable codi',
		d = 'Disable codi',
	},
	s = {
		name = '+search',
		p = 'Search string',
		r = 'Search and replace',
		l = 'Find in current file',
	},
	hp = 'which_key_ignore', -- wtf
	h = 'which_key_ignore',
	l = 'which_key_ignore',
	j = 'which_key_ignore',
	k = 'which_key_ignore',
	-- h = 'Go to the left window',
	-- l = 'Go to the right window',
	-- j = 'Go to the bottom window',
	-- k = 'Go to the top window',
}

-- local leaderVisualKeymap = {
-- 	['/'] = 'Comment'
-- }

local gKeymap = {
	name = "+goto",
	t = 'Go to type definition',
	i = 'Go to implementation',
	D = 'Go to declaration',
	d = 'Go to definition',
	r = 'Go to references',
	f = 'Go to file',
	R = 'Rename Reference',
	c = 'which_key_ignore', -- ignore vim commentary
	cc = 'which_key_ignore', -- ignore vim commentary
	cu = 'which_key_ignore', -- ignore vim commentary
	x = 'which_key_ignore', -- ignore netrw
	h = 'LSP actions',
}

wk.register_keymap('g', gKeymap)
wk.register_keymap(' ', leaderKeymap)
-- wk.register_keymap(' ', leaderVisualKeymap, {mode = 'v'})


