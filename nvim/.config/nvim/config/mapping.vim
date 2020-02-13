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

nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
" Disable arrow keys completely in Insert Mode
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

"last open buffer
nmap <Leader><Leader> <c-^>

" toggle tabline
nnoremap <silent> <leader>t :execute 'set showtabline=' . (&showtabline ==# 0 ? 2 : 0)<CR>

" quit buffer
nnoremap <leader>q :q<CR>
" save
nnoremap <leader>w :w<CR>

nnoremap <leader>\ :vsplit<CR>
nnoremap <leader>- :split<CR>

