" nnoremap <silent> <leader>p :Defx -split=vertical -winwidth=30 -direction=topleft -toggle -columns=git:mark:indent:icon:icons:filename:type<cr>
nnoremap <silent> <leader>p :Defx `expand('%:p:h')` -search=`expand('%:p')` -split=vertical -winwidth=30 -direction=topleft -toggle -columns=git:mark:indent:icon:icons:filename:type<cr>

autocmd FileType defx call s:defx_my_settings()
	function! s:defx_my_settings() abort
	  " Define mappings
	  
    nnoremap <silent><buffer><expr> l 
    \ defx#is_directory() 
    \ ? defx#do_action('open_or_close_tree') :
    \ defx#do_action('multi', ['drop'])
    nnoremap <silent><buffer><expr> <cr>
    \ defx#is_directory() 
    \ ? defx#do_action('open_or_close_tree') :
		\ defx#do_action('multi', ['drop'])
nnoremap <silent><buffer><expr> o
	  \ defx#do_action('multi',[['open']])
nnoremap <silent><buffer><expr> v
	  \ defx#do_action('multi',[['drop','vsplit']])
nnoremap <silent><buffer><expr> s
	  \ defx#do_action('multi',[['drop',  'split']])
    " nnoremap <silent><buffer><expr> yy defx#do_action('copy')
    " nnoremap <silent><buffer><expr> dd defx#do_action('move')
    " nnoremap <silent><buffer><expr> h defx#do_action('close_tree')
    nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')
    nnoremap <silent><buffer><expr> ! defx#do_action('execute_command')
    nnoremap <silent><buffer><expr> pp defx#do_action('paste')
    nnoremap <silent><buffer><expr> r defx#do_action('remove')
    nnoremap <silent><buffer><expr> m defx#do_action('rename')
    nnoremap <silent><buffer><expr> n defx#do_action('new_file')
    nnoremap <silent><buffer><expr> - defx#do_action('cd', ['..'])
  	nnoremap <silent><buffer><expr> > defx#do_action('resize',
	  \ defx#get_context().winwidth + 10)
	  nnoremap <silent><buffer><expr> < defx#do_action('resize',
	  \ defx#get_context().winwidth - 10)
	  nnoremap <silent><buffer><expr> .
	  \ defx#do_action('toggle_ignored_files')
  endfunction
	
call defx#custom#column('icon', {
	      \ 'directory_icon': '',
	      \ 'opened_icon': '',
	      \ 'root_icon': ' ',
	      \ })

call defx#custom#column('git', 'indicators', {
  \ 'Modified'  : 'M',
  \ 'Staged'    : '✚',
  \ 'Untracked' : 'U',
  \ 'Renamed'   : 'R',
  \ 'Unmerged'  : '',
  \ 'Ignored'   : 'I',
  \ 'Deleted'   : '✖',
  \ 'Unknown'   : '?'
  \ })


" I want to update defx status automatically when changing file.
autocmd BufWritePost * call defx#redraw()

