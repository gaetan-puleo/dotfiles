" true colors for terms
set termguicolors

let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" One tab equal 2 spaces
set tabstop=2 shiftwidth=2 expandtab

" no alerts
set belloff=all

" show linenumber
set number

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
set backupcopy=yes

" All floating window colors
highlight NormalFloat cterm=NONE ctermfg=14 ctermbg=0 gui=NONE guifg=#93a1a1 guibg=#1b262c

" force to always show tablines
" set showtabline=2

" mouse (r for disable and a for enable )
set mouse=a
set guicursor&

" auto save when changing buffer 
set autowrite

augroup neovim_terminal
  autocmd!

  " Enter Terminal-mode (insert) automatically
  autocmd TermOpen * startinsert

  " Disables number lines on terminal buffers
  autocmd TermOpen * :set nonumber norelativenumber
augroup END

" redefined :W as :w
cabbrev W w

" keep history if when changling buffer
set hidden

" persistent undo history
set undodir=~/.cache/.vim/undodir
set undofile

" hide mode (already in statusbar)
set noshowmode

" see invinsble characters
" :set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
" :set list
" set nowrap

"shows partial in the same split
set inccommand=nosplit

