" Use plug as Plugin Manager

call plug#begin('~/.local/share/nvim/plugged')

" Must be on all .vimrc file
Plug 'tpope/vim-sensible'

" UI theme
Plug 'drewtempelmeyer/palenight.vim'

" status bar
Plug 'itchyny/lightline.vim'

" file explorer
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

" defx git
Plug 'kristijanhusak/defx-git'

" defx color icons
Plug 'kristijanhusak/defx-icons'

call plug#end()
