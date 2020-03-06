let mapleader=' '

" go to file
" noremap <leader>gf gf
"navigate with keyboard
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l

noremap <leader>w :w<cr>
" inoremap <leader>jj :w<cr>

" go fuck yourself EX mode
map Q <nop>
" go fuck yourself recording 
nmap q <nop>

nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>

" Up and down are more logical with g..
nnoremap <silent> k gk
nnoremap <silent> j gj

"last open buffer
nmap <Leader><Leader> <c-^>

" disable Backspace and delete
inoremap <BS> <Nop>
inoremap <Del> <Nop>
" toggle tabline
nnoremap <silent> <leader>t :execute 'set showtabline=' . (&showtabline ==# 0 ? 2 : 0)<CR>

" quit buffer
nnoremap <leader>q :q<CR>
" save
nnoremap <leader>w :w<CR>

nnoremap <leader>\ :vsplit<CR>
nnoremap <leader>- :split<CR>

