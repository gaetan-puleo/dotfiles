augroup fmt
    autocmd!
    autocmd BufWritePre * silent! undojoin | Neoformat
augroup EN


