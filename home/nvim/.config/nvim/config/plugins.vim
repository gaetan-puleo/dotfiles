" Use plug as Plugin Manager

call plug#begin('~/.local/share/nvim/plugged')

" Must be on all .vimrc file

Plug 'tpope/vim-sensible'
" UI theme
Plug 'drewtempelmeyer/palenight.vim'
" Status bar
Plug 'itchyny/lightline.vim'
Plug 'taohexxx/lightline-buffer'

" Show git status line by line
" Plug 'mhinz/vim-signify'

Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'

" Autocomplete core
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Comment
Plug 'tpope/vim-commentary'

Plug 't9md/vim-choosewin'
"git branch function
Plug 'itchyny/vim-gitbranch'

" jsdoc syntax
Plug 'othree/jsdoc-syntax.vim'

" vim autoread
Plug 'djoshea/vim-autoread'

"vim mdx
Plug 'jxnblk/vim-mdx-js'

" denite
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'chemzqm/denite-extra'
Plug 'chemzqm/denite-git'

" zoom mode
Plug 'troydm/zoomwintab.vim'

" git conflicts
Plug 'rhysd/conflict-marker.vim'

" vista
Plug 'liuchengxu/vista.vim'

" TMUX
Plug 'wellle/tmux-complete.vim'
Plug 'christoomey/vim-tmux-navigator'


Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'

Plug 'janko/vim-test'


Plug 'ryanoasis/vim-devicons'

call plug#end()
