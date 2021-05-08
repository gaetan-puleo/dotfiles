local map = vim.api.nvim_set_keymap

require'bufferline'.setup{
  separator_style = "slant",
  mappings = true,
}

map('n', '<leader>1', ':lua require"bufferline".go_to_buffer(1)<CR>', {})
map('n', '<leader>2', ':lua require"bufferline".go_to_buffer(2)<CR>', {})
map('n', '<leader>3', ':lua require"bufferline".go_to_buffer(3)<CR>', {})
map('n', '<leader>4', ':lua require"bufferline".go_to_buffer(4)<CR>', {})
map('n', '<leader>5', ':lua require"bufferline".go_to_buffer(5)<CR>', {})
map('n', '<leader>6', ':lua require"bufferline".go_to_buffer(6)<CR>', {})
map('n', '<leader>7', ':lua require"bufferline".go_to_buffer(7)<CR>', {})
map('n', '<leader>8', ':lua require"bufferline".go_to_buffer(8)<CR>', {})
map('n', '<leader>9', ':lua require"bufferline".go_to_buffer(9)<CR>', {})
