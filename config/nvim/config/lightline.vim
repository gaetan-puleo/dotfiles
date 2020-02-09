" Lightline
" disable lightline bufferlist https://github.com/itchyny/lightline.vim/issues/292

let g:lightline = {
      \ 'colorscheme': 'ayu',
      \ 'enable': {
      \   'tabline': 1
      \ },
      \ 'tabline': {
      \   'left': [ [ 'bufferinfo' ],
      \             [ 'separator' ],
      \             [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
      \   'right': [ ],
      \  },
      \ 'tabline_separator': {'left': '', 'right': ''},
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch','readonly', 'absolutepath', 'modified' ] ],
      \   'right': [ 
      \               ['lineinfo'], 
      \               ['percent'], 
      \               ['fileformat', 'fileencoding'],
      \               [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \   'bufferinfo': 'lightline#buffer#bufferinfo',
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))'
      \ },
      \ 'separator': {'left': '', 'right': '' },
      \ 'subseparator' : {'left': '', 'right': ''},
      \ 'component_expand': {
    \   'buffercurrent': 'lightline#buffer#buffercurrent',
    \   'bufferbefore': 'lightline#buffer#bufferbefore',
    \   'bufferafter': 'lightline#buffer#bufferafter',
      \ 'linter_checking': 'lightline#ale#checking',
      \ 'linter_warnings': 'lightline#ale#warnings',
      \ 'linter_errors': 'lightline#ale#errors',
      \ 'linter_ok': 'lightline#ale#ok',
      \ },
      \ 'component_type': {
    \   'buffercurrent': 'tabsel',
    \   'bufferbefore': 'raw',
    \   'bufferafter': 'raw',
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ },
      \ }

" Lightline linter icons
let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

" let g:lightline#bufferline#show_number  = 1

" " order
" let g:lightline#bufferline#show_number = 2
" let g:lightline#bufferline#shorten_path = 1
" let g:lightline#bufferline#unnamed      = '[No Name]'

" nmap <Leader>1 <Plug>lightline#bufferline#go(1)
" nmap <Leader>2 <Plug>lightline#bufferline#go(2)
" nmap <Leader>3 <Plug>lightline#bufferline#go(3)
" nmap <Leader>4 <Plug>lightline#bufferline#go(4)
" nmap <Leader>5 <Plug>lightline#bufferline#go(5)
" nmap <Leader>6 <Plug>lightline#bufferline#go(6)
" nmap <Leader>7 <Plug>lightline#bufferline#go(7)
" nmap <Leader>8 <Plug>lightline#bufferline#go(8)
" nmap <Leader>9 <Plug>lightline#bufferline#go(9)
" nmap <Leader>0 <Plug>lightline#bufferline#go(10)


autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
