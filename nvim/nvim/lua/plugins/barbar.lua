local map = vim.api.nvim_set_keymap

vim.g.bufferline = {
	animation = false
}

map('n', '<leader>1', ':BufferGoto 1<CR>', {})
map('n', '<leader>2', ':BufferGoto 2<CR>', {})
map('n', '<leader>3', ':BufferGoto 3<CR>', {})
map('n', '<leader>4', ':BufferGoto 4<CR>', {})
map('n', '<leader>5', ':BufferGoto 5<CR>', {})
map('n', '<leader>6', ':BufferGoto 6<CR>', {})
map('n', '<leader>7', ':BufferGoto 7<CR>', {})
map('n', '<leader>8', ':BufferGoto 8<CR>', {})
map('n', '<leader>9', ':BufferLast<CR>', {})
--[[ " Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR> ]]


