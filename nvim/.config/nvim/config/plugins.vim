" Use plug as Plugin Manager

call plug#begin('~/.local/share/nvim/plugged')

" Must be on all .vimrc file
Plug 'tpope/vim-sensible'

" UI theme
" Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
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
Plug 'neoclide/coc-denite'
" Comment
Plug 'tpope/vim-commentary'

Plug 'jremmen/vim-ripgrep'

" Plug 'mcchrish/nnn.vim'
" undo history tab
" Plug 'mbbill/undotree'

" Linter wrapper
" Plug 'w0rp/ale'

" linter wrapper for lightlane
" Plug 'maximbaz/lightline-ale'

" Plug 'taohexxx/lightline-buffer'
" Plug 'mengelbrecht/lightline-bufferline'

" Swap Windows with <leader>ww (before on src window and after on dest window)
Plug 'wesQ3/vim-windowswap'

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
Plug 'chemzqm/todoapp.vim'

" JSDOC
Plug 'heavenshell/vim-jsdoc'

" zoom mode
Plug 'troydm/zoomwintab.vim'

" git messenger
Plug 'rhysd/git-messenger.vim'

" git conflicts
Plug 'rhysd/conflict-marker.vim'

" vista
Plug 'liuchengxu/vista.vim'

" TMUX
Plug 'wellle/tmux-complete.vim'
Plug 'christoomey/vim-tmux-navigator'
" devicons
" Plug 'ryanoasis/vim-devicons'


call plug#end()
