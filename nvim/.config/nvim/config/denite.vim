" Define mappings

" nnoremap <Leader>f :Denite file/rec -start-filter -split=floating -auto-action=preview <CR>
nnoremap <Leader>f :Denite file/rec -start-filter -split=floating <CR>
nnoremap <Leader>b :Denite buffer -start-filter -split=floating<CR>
nnoremap <Leader>gs :Denite gitstatus -split=floating<CR>
nnoremap <Leader>gl :Denite gitlog -split=floating<CR>
" nnoremap <Leader>s :Denite -start-filter grep:::! -split=floating -auto-action=preview<CR>
nnoremap <silent> <Leader>s :Denite -start-filter grep:::! -split=floating<CR>

  autocmd FileType denite call s:denite_my_settings()
	function! s:denite_my_settings() abort
    call denite#custom#source(
	\ '_', 'matchers', ['matcher/fuzzy', 'matcher/project_files'])
    nnoremap <silent><buffer><expr> l
	  \ denite#do_map('do_action')
	  nnoremap <silent><buffer><expr> <CR>
	  \ denite#do_map('do_action')
	  " nnoremap <silent><buffer><expr> r
	  " \ denite#do_map('do_action', 'delete')
	  nnoremap <silent><buffer><expr> p
	  \ denite#do_map('do_action', 'preview')
	  nnoremap <silent><buffer><expr> q
	  \ denite#do_map('quit')
	  nnoremap <silent><buffer><expr> i
	  \ denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer> r
	  \ :<C-u>call <SID>denite_quickfix()<CR>

	  " nnoremap <silent><buffer><expr> <Space>
	  " \ denite#do_map('toggle_select').'j'
	endfunction

	function! s:denite_quickfix()
	  call denite#call_map('toggle_select_all')
	  call denite#call_map('do_action', 'quickfix')
	endfunction
  " I want to use external statusline plugin like lightline/vim-airline etc.
	" call denite#custom#option('_', 'statusline', v:true)

  autocmd FileType denite-filter call s:denite_filter_my_settings()
	function! s:denite_filter_my_settings() abort
    " quit with esc"
    imap <silent><buffer> <Esc> <Plug>(denite_filter_quit)

    " quit with enter and validate
    imap <silent><buffer> <CR> <Plug>(denite_filter_quit)<CR>
	endfunction



call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts',
    \ ['-i', '--vimgrep', '--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

call denite#custom#var('buffer', 'command', ['rg'])
" call denite#custom#var('grep', 'default_opts',
"     \ ['-i', '--vimgrep', '--no-heading'])
call denite#custom#var('buffer', 'recursive_opts', [])
call denite#custom#var('buffer', 'pattern_opt', ['--regexp'])
call denite#custom#var('buffer', 'separator', ['--'])
call denite#custom#var('buffer', 'final_opts', [])

call denite#custom#var('file/rec', 'command',
\ ['rg', '--files', '--glob', '!.git'])

call denite#custom#var('buffer', 'date_format', '')
call denite#custom#source('buffer', 'matchers', ['converter/abbr_word', 'matcher/substring'])
" allow grep source filtering on either path or text
" call denite#custom#source('grep', 'converters', ['converter_abbr_word'])

call denite#custom#option('default', 'prompt', '>')
call denite#custom#option('default', 'cursor_wrap', v:true)
