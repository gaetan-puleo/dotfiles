"
"  NVIM CONFIG Version 0.1.0
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""

"
"   Config
"
"""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " vi Improved on

" enable mouse
set mouse=a

"disable netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

"set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

"set tw=79

" set dark theme
"set background=dark

set encoding=UTF-8

filetype plugin on
filetype plugin indent on

"enable color Highlighting
syntax enable

" enable true colors support
"set termguicolors     

"disable swap and backup files
set noswapfile
set nobackup
set nowb

"One tab is 2 spaces
set tabstop=2 shiftwidth=2 expandtab
set autoindent
set smartindent

" disable bell
set belloff=all
"set viminfo+=n/.vim/viminfo
" show line number
set number

" use local tags directory
set tags=./tags;

set showmatch     " set show matching parenthesis

set ignorecase    " ignore case when searching

set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set updatetime=1000             " Speed up the updatetime so gitgutter and friends are quicker


" Make the keyboard faaaaaaast
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50

let mapleader = ","

set grepprg=rg\ --vimgrep

set clipboard=unnamedplus
"
"   Keyboard
"
"""""""""""""""""""""""""""""""""""""""""""""""""""
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>

" tab and antitab key
"inoremap <TAB> <C-T>
":inoremap <S-TAB> <C-D>


" open dirvish current directory
nmap cd <Plug>(dirvish_up)

" auto pair (
" inoremap ( ()<Left>

" auto pair {
" inoremap { {}<Left>


" fzf
nnoremap <C-p> :Files<Cr>



" display files
nmap <C-f> :Tags<CR>

" open new tab
map <C-w> :tab split<CR>

" git status
noremap gs :Gstatus<CR>

" git diff
noremap gd :Gdiff<CR>
noremap <C-u> :UndotreeToggle<CR>


" git log
" nnoremap gl :Gitlog <Cr> 

" Yank to end of line
nnoremap Y y$

"Delete to the end of line
nnoremap D d$

" Make j and k move to the next row, not file line
nnoremap j gj
nnoremap k gk

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" To map to <leader>D:
noremap <leader>G :call ReactGotoDef()<CR>

" search
nmap <C-f> <CR>:Rg<CR>

" search and replace
" "nmap <C-h> <CR>:Acks <Left>

" Select all text
map <C-a> <esc>ggVG<CR>

"jsdoc
"nmap <C-j> <C-l> ?function<cr>:noh<cr><Plug>(jsdoc)


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

" vim commentary
xmap cc  <Plug>Commentary
vmap cu  <Plug>Commentary
nmap cu  <Plug>Commentary
omap cu  <Plug>Commentary
nmap cu <Plug>CommentaryLine

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd nvim +'PlugInstall --sync' +qa
endif

call plug#begin('~/.local/share/nvim/plugged')
Plug 'janko/vim-test'

"Must be on all .vimrc file
Plug 'tpope/vim-sensible'

Plug 'drewtempelmeyer/palenight.vim'
Plug 'mbbill/undotree'



Plug 'mhinz/vim-signify'

" dirvish
Plug 'justinmk/vim-dirvish'

" dirvish git
Plug 'kristijanhusak/vim-dirvish-git'
" linter wrapper
Plug 'w0rp/ale'

" Add a status bar
Plug 'itchyny/lightline.vim'

" linter wrapper for lightlane
Plug 'maximbaz/lightline-ale'

Plug 'luochen1990/rainbow'

"git branch function
Plug 'itchyny/vim-gitbranch'

" autoreload files
Plug 'djoshea/vim-autoread'

"fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"JS color syntaxes
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" comment
Plug 'tpope/vim-commentary'
Plug 'suy/vim-context-commentstring'

Plug 'janko/vim-test'

" show indentations
Plug 'Yggdroot/indentLine'
call plug#end()

"
"   Plugin config
"
""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme palenight

" ALE
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1


" fzf
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options

let $FZF_DEFAULT_COMMAND = 'rg --files -g ""'

command! -bang -nargs=* Ls  
      \ call fzf#run(fzf#wrap({'source': 'ls -a'}))


" Lightline
let g:lightline = {
      \ 'colorscheme': 'palenight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'absolutepath', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

"linter
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }


let g:lightline.active.right = [['lineinfo'], ['percent'], ['fileformat', 'fileencoding'],[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]]


let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

" git signify

let g:signify_line_highlight = 0
let g:signify_sign_add               = '✚'
let g:signify_sign_delete            = '✖'
let g:signify_sign_delete_first_line = '✖'
let g:signify_sign_change            = '◉'
let g:signify_sign_changedelete = g:signify_sign_change


