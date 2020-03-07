" Lightline
" disable lightline bufferlist https://github.com/itchyny/lightline.vim/issues/292

let g:lightline = {
      \ 'colorscheme': 'palenight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch','readonly', 'absolutepath', 'modified' ] ],
      \   'right': [ 
      \               ['lineinfo'], 
      \               ['percent'], 
      \               ['fileformat', 'fileencoding'],
      \               ],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))'
      \ },
      \ 'separator': {'left': '', 'right': '' },
      \ 'subseparator' : {'left': '', 'right': ''},
      \ }

