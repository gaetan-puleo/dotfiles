"
"	  NVIM CONFIG
"
"
"	  This config needs to be stable to be used for production code
"
"	  Please create a new branch to test some features before merging to the
"	  master branch of the dotfile repo
"""""""""""""""""""""""""""""""""""""""""""""

if &compatible
  set nocompatible               " Be iMproved
endif

source ~/.config/nvim/config/plugins.vim
source ~/.config/nvim/config/settings.vim
source ~/.config/nvim/config/mapping.vim

" plugins settings
source ~/.config/nvim/config/lightline.vim
source ~/.config/nvim/config/defx.vim
