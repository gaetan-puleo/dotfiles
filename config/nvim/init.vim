"
"	  NVIM CONFIG
"
"
"	  Please keep the config stable on your master branche
"
"""""""""""""""""""""""""""""""""""""""""""""

if &compatible
  set nocompatible               " Be iMproved
endif

source ~/.config/nvim/config/plugins.vim
source ~/.config/nvim/config/settings.vim
source ~/.config/nvim/config/mapping.vim

" plugins settings
source ~/.config/nvim/config/ale.vim
source ~/.config/nvim/config/lightline.vim
source ~/.config/nvim/config/defx.vim
source ~/.config/nvim/config/coc.vim
source ~/.config/nvim/config/vim-test.vim
source ~/.config/nvim/config/vim-signify.vim
source ~/.config/nvim/config/vim-commentary.vim
source ~/.config/nvim/config/vim-emmet.vim
source ~/.config/nvim/config/undotree.vim
source ~/.config/nvim/config/fzf.vim
