local colors = {
  black        = '#111111',
  white        = '#ffffff',
  red          = '#f7768e',
  green        = '#9ece6a',
  blue         = '#7aa2f7',
  yellow       = '#e0af68',
  purple       = '#bb9af7',
  darkgray         = '#1a1b26',
  gray     = '#16161e',
  lightgray    = '#504945',
  inactivegray = '#7c6f64',
}

local l = {
  normal = {
    a = {bg = colors.gray, fg = colors.blue, gui = 'bold'},
    b = {bg = colors.gray, fg = colors.white},
    c = {bg = colors.gray, fg = colors.white}
  },
  insert = {
    a = {bg = colors.gray, fg = colors.green, gui = 'bold'},
    b = {bg = colors.gray, fg = colors.white},
    c = {bg = colors.gray, fg = colors.white}
  },
  visual = {
    a = {bg = colors.gray, fg = colors.purple, gui = 'bold'},
    b = {bg = colors.gray, fg = colors.white},
    c = {bg = colors.gray, fg = colors.white}
  },
  replace = {
    a = {bg = colors.gray, fg = colors.red, gui = 'bold'},
    b = {bg = colors.gray, fg = colors.white},
    c = {bg = colors.gray, fg = colors.white}
  },
  command = {
    a = {bg = colors.gray, fg = colors.yellow, gui = 'bold'},
    b = {bg = colors.gray, fg = colors.white},
    c = {bg = colors.gray, fg = colors.white}
  },
  inactive = {
    a = {bg = colors.gray, fg = colors.darkgray, gui = 'bold'},
    b = {bg = colors.gray, fg = colors.darkgray},
    c = {bg = colors.gray, fg = colors.darkgray}
  }
}

require('lualine').setup {
  -- ... your lualine config
  options = {
    theme = l,
  	-- disabled_filetypes = {'NvimTree'},
  },
	sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat','filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
	--
  -- ... your lualine config
}


