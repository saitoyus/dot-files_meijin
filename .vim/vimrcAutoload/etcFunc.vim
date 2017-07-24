if &term =~ "xterm"
    let &t_ti .= "\e[?2004h"
    let &t_te .= "\e[?2004l"
    let &pastetoggle = "\e[201~"
    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction
 
    noremap <special> <expr> <Esc>[200~ XTermPasteBegin("0i")
    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
    cnoremap <special> <Esc>[200~ <nop>
    cnoremap <special> <Esc>[201~ <nop>
endif

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
"NeoBundleCheck

" # ~/.vimrc
set clipboard&
set clipboard+=unnamed
" set clipboard^=unnamedplus

" function! CopyPath()
"   let @*=expand('%:P')
" endfunction
"
" function! CopyFullPath()
"   let @*=expand('%:p')
" endfunction
"
" function! CopyFileName()
"   let @*=expand('%:t')
" endfunction

" if plugin is already loaded then, not load plugin.
if exists("g:loaded_copypath")
    finish
endif
let g:loaded_copypath = 1

" if option is set then use open.
if !exists('g:copypath_copy_to_unnamed_register')
    let g:copypath_copy_to_unnamed_register = 0
endif

function CopyPath()
    let @*=expand('%:p')
    " copy unnamed register.
    if g:copypath_copy_to_unnamed_register
        let @"=expand('%:p')
    endif
endfunction

function CopyFileName()
    let @*=expand('%:t')
    " copy unnamed register.
    if g:copypath_copy_to_unnamed_register
        let @"=expand('%:t')
    endif
endfunction

command! CopyPath     call CopyPath()
command! CopyFullPath call CopyFullPath()
command! CopyFileName call CopyFileName()

nnoremap <silent>cp :CopyPath<CR>
nnoremap <silent>cfp :CopyFullPath<CR>
nnoremap <silent>cf :CopyFileName<CR>

augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END
augroup END
