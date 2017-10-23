"function settings
autocmd ColorScheme * highlight LineNr ctermfg=250 ctermbg=239
colorscheme Tomorrow-Night-Bright 
set t_Co=256

"" ステータスラインを常に表示（編集中のファイル名が常に確認できるようになる）
set laststatus=2

"" 入力中のコマンドをステータスに表示する
set showcmd

"" ステータスラインに文字コードと改行文字を表示する
set statusline=%<%F\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

set incsearch
set hlsearch
set wrap

" 閉じ括弧が入力されたとき、対応する開き括弧にわずかの間ジャンプする。（有効:showmatch/無効:noshowmatch）
set showmatch
set whichwrap=h,l

" 検索パターンにおいて大文字と小文字を区別しない。（有効:ignorecase/無効:noignorecase）
set ignorecase

" 検索パターンが大文字を含んでいたらオプション 'ignorecase' を上書きする。（有効:smartcase/無効:nosmartcase）
set smartcase
set hidden
set history=2000

" Insertモードで <Tab> を挿入するとき、代わりに適切な数の空白を使う。（有効:expandtab/無効:noexpandtab）
set expandtab
set tabstop=4

" インデントの各段階に使われる空白の数。
set shiftwidth=4
set helplang=en

set number
set title
syntax on
set smartindent

" オンのとき、コマンドライン補完が拡張モードで行われる。（有効:wildmenu/無効:nowildmenu）
set wildmenu

set mouse=a
set backspace=2

" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索する。（有効:wrapscan/無効:nowrapscan）
set wrapscan

" カーソルが何行目の何列目に置かれているかを表示する。（有効:ruler/無効:noruler）
set ruler

set whichwrap=b,s,[,],,~
set backspace=indent,eol,start

set t_Co=256
set nocompatible

"---------------------------------------------------------------
"function settings
set noswapfile
set viminfo='20,\"1000
set nobackup

