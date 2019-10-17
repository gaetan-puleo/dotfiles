" true colors for terms
set termguicolors

" apply theme
colorscheme palenight

" One tab equal 2 spaces
set tabstop=2 shiftwidth=2 expandtab

" no alerts
set belloff=all

" show linenumber
set number

" leader key
let mapleader = ","

" allow clipboard
set clipboard+=unnamedplus

" choose split location
set splitbelow
set splitright

" Enable cursor line position tracking
set cursorline

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" set winbl=10

" disable backupfile
set nobackup
set noswapfile

" All floating window colors
highlight NormalFloat cterm=NONE ctermfg=14 ctermbg=0 gui=NONE guifg=#93a1a1 guibg=#222530

" force to always show tablines
set showtabline=2

" Enable mouse (I will disable it)
set mouse=a
