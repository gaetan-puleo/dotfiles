nnoremap <silent> <leader>n :Defx -split=vertical -winwidth=30 -direction=topleft -toggle -columns=git:mark:indent:icon:icons:filename:type<cr>

autocmd FileType defx call s:defx_my_settings()
	function! s:defx_my_settings() abort
	  " Define mappings
	  
    nnoremap <silent><buffer><expr> <2-LeftMouse> 
    \ defx#is_directory() 
    \ ? defx#do_action('open_or_close_tree') :
    \ defx#do_action('multi', ['drop', 'quit'])
    nnoremap <silent><buffer><expr> <cr>
    \ defx#is_directory() 
    \ ? defx#do_action('open_or_close_tree') :
    \ defx#do_action('multi', ['drop', 'quit'])
    " drop is a better open 
    nnoremap <silent><buffer><expr> s defx#do_action('drop', 'split')
    nnoremap <silent><buffer><expr> v defx#do_action('drop', 'vsplit')
    nnoremap <silent><buffer><expr> yy defx#do_action('copy')
    nnoremap <silent><buffer><expr> dd defx#do_action('move')
    nnoremap <silent><buffer><expr> pp defx#do_action('paste')
    nnoremap <silent><buffer><expr> <Del> defx#do_action('remove')
    nnoremap <silent><buffer><expr> r defx#do_action('rename')
    nnoremap <silent><buffer><expr> nd defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> nf defx#do_action('new_file')
    nnoremap <silent><buffer><expr> nm defx#do_action('new_multiple_files')
    nnoremap <silent><buffer><expr> - defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])
	  nnoremap <silent><buffer><expr> .
	  \ defx#do_action('toggle_ignored_files')
  endfunction
	
