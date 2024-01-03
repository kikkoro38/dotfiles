" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

:syntax on
" setting

" encoding
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
"set fileformats=unix,dos,macset fenc=utf-8

" file
set autoread
set hidden

" appeararnce
set nobackup
set noswapfile
set showcmd
set mouse=a
set maxmempattern=4096

set number
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 括弧入力時の対応する括弧を表示
set showmatch
" コマンドラインの補完
set wildmode=list:longest

" 折り返し時に表示行単位での移動できるようにする
nmap gj gj<SID>g
nmap gk gk<SID>g
nnoremap <script> <SID>gj gj<SID>g
nnoremap <script> <SID>gk gk<SID>g
nmap <SID>g <Nop>

" 全角スペースの背景を白に変更
autocmd Colorscheme * highlight FullWidthSpace ctermbg=white
autocmd VimEnter * match FullWidthSpace /　/

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

" Set Dein base path (required)
let s:dein_base = '~/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '~/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
" ステータスライン
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('lambdalisue/battery.vim')
" カラーテーマ
call dein#add('jacoborus/tender.vim')
call dein#add('dracula/vim')

" ディレクトリ表示
call dein#add('scrooloose/nerdtree')
call dein#add('jistr/vim-nerdtree-tabs')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('ryanoasis/vim-devicons')
call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')

" git管理
call dein#add('airblade/vim-gitgutter')
call dein#add('tpope/vim-fugitive')

"call dein#add('kchmck/vim-coffee-script')

" rails
call dein#add('tpope/vim-rails')
call dein#add('tpope/vim-endwise')

" シンタックスチェック
call dein#add('ngmy/vim-rubocop')
"call dein#add('scrooloose/syntastic')
call dein#add('dense-analysis/ale')

call dein#add('prabirshrestha/vim-lsp')
call dein#add('mattn/vim-lsp-settings')

call dein#add('vim-denops/denops.vim')
call dein#add('vim-skk/skkeleton')
" Finish Dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

" tender.vim
if (has("termguicolors"))
 set termguicolors
endif
colorscheme dracula
let g:airline_theme = 'dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" battery.vim
set statusline+=%{battery#component()}
set tabline+=%{battery#component()}

"nerdtree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" 隠しファイル表示
let NEADTreeShowHidden = 1
let g:nerdtree_tabs_autoclose = 1

"gitgutter
nnoremap <silent> <M-g> :GitGutterToggle<CR>

"syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [
"  \ 'ruby', 'javascript', 'scss', 'html', 'haml', 'slim', 'sh',
"  \ 'spec', 'vim', 'zsh', 'sass', 'eruby'] }
"
"let g:syntastic_javascript_checkers=['eslint']
"let g:syntastic_scss_checkers = ['scss_lint']
"let g:syntastic_ruby_checkers = ['rubocop']
"
"let g:syntastic_error_symbol='✗'
"let g:syntastic_style_error_symbol='✗'
"let g:syntastic_warning_symbol='☡'
"let g:syntastic_style_warning_symbol='☡'

"ale
let g:ale_linters = {
\    'ruby': ['rubocop'],
\    'javascript': ['eslint', 'prettier'],
\    'typescript': ['tslint', 'tsserver'],
\    'html': ['prettier']
\ }
let g:ale_linters_explicit = 1 
let g:airline#extensions#ale#enabled = 1

" skkeleton
call skkeleton#config({ 'globalJisyo': '~/.skk/dict/SKK-JISYO.L' })
imap <C-j> <Plug>(skkeleton-toggle)
cmap <C-j> <Plug>(skkeleton-toggle)
