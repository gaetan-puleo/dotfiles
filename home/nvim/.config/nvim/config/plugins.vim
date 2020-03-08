" Use plug as Plugin Manager

call plug#begin('~/.local/share/nvim/plugged')

" Must be on all .vimrc file

Plug 'tpope/vim-sensible'

" UI theme
Plug 'arcticicestudio/nord-vim'
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

Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
" JS color syntaxes
" Plug 'pangloss/vim-javascript'

"Better jsx syntax
" Plug 'maxmellon/vim-jsx-pretty'

" Autocomplete core
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-denite'
" Comment
Plug 'tpope/vim-commentary'

" undo history tab
" Plug 'mbbill/undotree'

Plug 't9md/vim-choosewin'
"git branch function
Plug 'itchyny/vim-gitbranch'

" jsdoc syntax
Plug 'othree/jsdoc-syntax.vim'

" vim autoread
Plug 'djoshea/vim-autoread'

"vim mdx
" Plug 'jxnblk/vim-mdx-js'

" denite
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'chemzqm/denite-extra'
Plug 'chemzqm/denite-git'

" zoom mode
Plug 'troydm/zoomwintab.vim'

" git messenger
Plug 'rhysd/git-messenger.vim'

" git conflicts
Plug 'rhysd/conflict-marker.vim'

" vista
" Plug 'liuchengxu/vista.vim'

" TMUX
Plug 'wellle/tmux-complete.vim'
Plug 'christoomey/vim-tmux-navigator'


Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'

" Plug 'janko/vim-test'


call plug#end()
