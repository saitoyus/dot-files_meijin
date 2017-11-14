nnoremap <silent><C-b> :Bookmark<CR>
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1
let g:NERDTreeShowBookmarks=1
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('md',     'blue',    'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml',    'green',  'none', 'lightgray',  '#151515')
call NERDTreeHighlightFile('config', 'green',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('conf',   'green',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('json',   'red',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('html',   'cyan',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('twig',   'cyan',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('css',    'lightyellow',    'none', 'cyan',    '#151515')
call NERDTreeHighlightFile('rb',     'Red',     'none', 'red',     '#151515')
call NERDTreeHighlightFile('js',     'lightblue',     'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php',    'Magenta', 'none', '#ff00ff', '#151515')

let g:NERDTreeDirArrows = 0 
"let g:NERDTreeDirArrowExpandable  = '>'
"let g:NERDTreeDirArrowCollapsible = 'v'

" デフォルトでツリーを表示させる
function s:MoveToFileAtStart()
  call feedkeys("\<Space>")
  call feedkeys("\s")
  call feedkeys("\l")
endfunction
autocmd VimEnter *  NERDTree | call s:MoveToFileAtStart() 
"他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


