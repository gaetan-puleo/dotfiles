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

call plug#end()
