let g:fern#renderer = "nerdfont"

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
augroup END

function! s:init_fern() abort
  echo "This function is called ON a fern buffer WHEN initialized"

  " Open node with 'o'
  " nmap <buffer> o <Plug>(fern-action-open)
	set nonumber

  " Add any code to customize fern buffer
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END
