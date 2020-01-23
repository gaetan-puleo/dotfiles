nnoremap <silent> <leader>g <Plug>(coc-definition)
" Remap keys for gotos
nmap <silent>  <leader>gd <Plug>(coc-definition)
nmap <silent>  <leader>gy <Plug>(coc-type-definition)
nmap <silent>  <leader>gi <Plug>(coc-implementation)
nmap <silent>  <leader>gr <Plug>(coc-references)

nmap <silent>  gd <Plug>(coc-definition)
nmap <silent>  gy <Plug>(coc-type-definition)
nmap <silent>  gi <Plug>(coc-implementation)
nmap <silent>  gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> <leader>k :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" To make completion works like VSCode
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'
