:syntax on
" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" viminfo作らない
" set viminfo=
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" マウス使えるようにする
set mouse=a
" パターンマッチで使用する上限メモリ数
set maxmempattern=4096

" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
"set cursorline
" 現在の行を強調表示（縦）
"set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
"set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
nnoremap <S-h> ^
nnoremap <S-l> $
" 全角スペースの背景を白に変更
autocmd Colorscheme * highlight FullWidthSpace ctermbg=white
autocmd VimEnter * match FullWidthSpace /　/
" カラースキーム設定
colorscheme default

" ステータスライン
" ファイル名表示
set statusline=%F
" 変更チェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" HELP表示
set statusline+=%h
" プレビューウインドウであれば[Preview]表示
set statusline+=%w
" これ以降は右寄せ表示
set statusline+=%=
" file encoding
set statusline+=[ENC=%{&fileencoding}]
" 現在行数/全行数
set statusline+=[LOW=%l/%L]
" ステータスラインを常に表示
set laststatus=2

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=eol:$,tab:\▸\-,trail:_
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" ウインドウタブ
nnoremap [TABCMD] <nop>
nmap <leader>t [TABCMD]

nnoremap <silent> [TABCMD]f :<c-u>tabfirst<cr>
nnoremap <silent> [TABCMD]l :<c-u>tablast<cr>
nnoremap <silent> [TABCMD]n :<c-u>tabnext<cr>
nnoremap <silent> [TABCMD]N :<c-u>tabNext<cr>
nnoremap <silent> [TABCMD]p :<c-u>tabprevious<cr>
nnoremap <silent> [TABCMD]e :<c-u>tabedit<cr>
nnoremap <silent> [TABCMD]c :<c-u>tabclose<cr>
nnoremap <silent> [TABCMD]o :<c-u>tabonly<cr>
nnoremap <silent> [TABCMD]s :<c-u>tabs<cr>

"その他
" ヤンクした値を繰り返しペースト
vnoremap <silent> <C-p> "0p
" ヤンクをクリップボードに
set clipboard+=unnamed
set undodir=~/tmp/vim/undo

" プラグイン
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" プラグイン管理
Plugin 'VundleVim/Vundle.vim'

" ディレクトリ表示
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" git管理
Plugin 'airblade/vim-gitgutter'

"Plugin 'kchmck/vim-coffee-script'

" deno
Plugin 'vim-denops/denops-vim'
Plugin 'vim-denops/denops-helloworld.vim'

" rails 
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'

" シンタックスチェック
Plugin 'ngmy/vim-rubocop'
Plugin 'scrooloose/syntastic'

"Plugin 'lighttiger2505/gtags.vim'
"
"Plugin 'jsfaint/gen_tags.vim'

call vundle#end()
filetype plugin indent on

"nerdtree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" 隠しファイル表示
let NEADTreeShowHidden = 1
let g:nerdtree_tabs_autoclose = 0

"vim-coffee-script
" vimにcoffeeファイルタイプを認識させる
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
" インデント設定
autocmd FileType coffee setlocal sw=2 sts=2 ts=2 et
" オートコンパイル
"保存と同時にコンパイルする
"autocmd BufWritePost *.coffee silent make! 
"エラーがあったら別ウィンドウで表示
"autocmd QuickFixCmdPost * nested cwindow | redraw!
" Ctrl-cで右ウィンドウにコンパイル結果を一時表示する
"nnoremap <silent> <C-C> :CoffeeCompile vert <CR><C-w>h

"gtags.vim
"Options
"let g:Gtags_Auto_Map = 0
"let g:Gtags_OpenQuickfixWindow = 1
"" Keymap
"" Show definetion of function cousor word on quickfix
"nmap <silent> K :<C-u>exe("Gtags ".expand('<cword>'))<CR>
"" Show reference of cousor word on quickfix
"nmap <silent> R :<C-u>exe("Gtags -r ".expand('<cword>'))<CR>
" 
""----------------------------------------------------
""" GNU GLOBAL(gtags)
""----------------------------------------------------
"nmap <C-q> <C-w><C-w><C-w>q
"nmap <C-g> :Gtags -g
"nmap <C-l> :Gtags -f %<CR>
"nmap <C-j> :Gtags <C-r><C-w><CR>
"nmap <C-k> :Gtags -r <C-r><C-w><CR>
"nmap <C-n> :cn<CR>
"nmap <C-p> :cp<CR>

"gitgutter
nnoremap <silent> <M-g> :GitGutterToggle<CR>

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [
  \ 'ruby', 'javascript', 'coffee', 'scss', 'html', 'haml', 'slim', 'sh',
  \ 'spec', 'vim', 'zsh', 'sass', 'eruby'] }

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_coffee_checkers = ['coffeelint']
let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_ruby_checkers = ['rubocop']

let g:syntastic_error_symbol='✗'
let g:syntastic_style_error_symbol='✗'
let g:syntastic_warning_symbol='☡'
let g:syntastic_style_warning_symbol='☡'
