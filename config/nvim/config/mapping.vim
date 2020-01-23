let mapleader=' '

" go to file
noremap <leader>gf gf
"navigate with keyboard
noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l

noremap <leader>w :w<cr>
" inoremap <leader>jj :w<cr>

" go fuck yourself EX mode
map Q <nop>
" go fuck yourself recording 
map q <nop>
" go fuck yourself search
map <Esc> <nop>

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

imap jj <Esc>
