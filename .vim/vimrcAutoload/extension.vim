augroup vimrc_loading
  autocmd!
  autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.jsx setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.jsx.erb set filetype=javascript.jsx
  autocmd BufNewFile,BufRead *.js.erb set filetype=javascript.jsx
augroup end
