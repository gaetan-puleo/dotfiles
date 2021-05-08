vim.g.dashboard_custom_header = {
  '                                                           ',
  '       .___.                                               ',
  '      /     \\            _   _                 _           ',
  '     | O _ O |          | \\ | |               (_)          ',
  '     /  \\_/  \\          |  \\| | ___  _____   ___ _ __ ___  ',
  '   .´ /     \\ `.        | . ` |/ _ \\/ _ \\ \\ / / |  _ ` _ \\ ',
  '  / _|       |_ \\       | |\\  |  __/ (_) \\ V /| | | | | | |',
  ' (_/ |       | \\_)      |_| \\_|\\___|\\___/ \\_/ |_|_| |_| |_|',
  '     \\       /                                             ',
  '    __\\_>-<_/__                                            ',
  '    ~;/     \\;~                                            ',
  '                                                           '
}

vim.g.dashboard_custom_section = {
    a = {description = {'  Find File          '}, command = 'Telescope find_files'},
    b = {description = {'  Recently Used Files'}, command = 'Telescope oldfiles'},
    -- c = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
    d = {description = {'  Find Word          '}, command = 'Telescope live_grep'},
    e = {description = {'  Settings           '}, command = ':e ~/.config/nvim/init.lua'}
    -- e = {description = {'  Marks              '}, command = 'Telescope marks'}
}
-- vim.g.dashboard_custom_footer = {'gaetan.com'}
