" Use plug as Plugin Manager

call plug#begin('~/.local/share/nvim/plugged')

" Must be on all .vimrc file
Plug 'tpope/vim-sensible'

" UI theme
Plug 'drewtempelmeyer/palenight.vim'

" Status bar
Plug 'itchyny/lightline.vim'

" File explorer
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

" defx git
Plug 'kristijanhusak/defx-git'

" defx color icons
Plug 'kristijanhusak/defx-icons'

" Show git status line by line
Plug 'mhinz/vim-signify'

" JS color syntaxes
Plug 'pangloss/vim-javascript'

"Better jsx syntax
Plug 'maxmellon/vim-jsx-pretty'

" Autocomplete core
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Comment
Plug 'tpope/vim-commentary'

" Use context for comment
Plug 'suy/vim-context-commentstring'

" undo history tab
Plug 'mbbill/undotree'

"fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Linter wrapper
Plug 'w0rp/ale'

" linter wrapper for lightlane
Plug 'maximbaz/lightline-ale'

" bufferline
" Plug 'mgee/lightline-bufferline'

" Swap Windows with <leader>ww (before on src window and after on dest window)
Plug 'wesQ3/vim-windowswap'

"git branch function
Plug 'itchyny/vim-gitbranch'

" launch test
" Plug 'janko-m/vim-test'

" jsdoc syntax
Plug 'othree/jsdoc-syntax.vim'

" emmet (ctrl-y and , to extend)
" Plug 'mattn/emmet-vim'
call plug#end()
