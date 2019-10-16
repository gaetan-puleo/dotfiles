"nnoremap <silent> <leader>D :Defx -split=vertical -winwidth=50 -direction=topleft -columns=icons:filename:type<cr>

nnoremap <silent> <leader>n :Defx -split=vertical -winwidth=30 -direction=topleft -toggle -columns=git:mark:indent:icons:filename:type<cr>

autocmd FileType defx call s:defx_my_settings()
	function! s:defx_my_settings() abort
	  " Define mappings
	  nnoremap <silent><buffer><expr> <cr>
    \ defx#is_directory() 
    \ ? defx#do_action('open_or_close_tree') :
    \ defx#do_action('multi', ['drop', 'quit'])
	endfunction
