syntax on
"新しい行のインデントを現在行と同じにする
set autoindent
"バックアップファイルを作るディレクトリ
set backupdir=$HOME/vimbackup
"ファイル選択ダイアログの初期ディレクトリを、開いているファイルと同じディレクトリに設定
set browsedir=buffer
"ヤンクしたテキストをデスクトップのクリップボードにコピー
set clipboard=unnamed
"Vi互換をオフ
set nocompatible
"スワップファイル用のディレクトリ
set directory=$HOME/vimbackup
"タブの代わりに空白文字を挿入する
set expandtab
"編集中のファイルを保存せずに他のファイルへ切り替え可能にする
set hidden
"インクリメンタルサーチを行う
set incsearch
"タブ文字、行末など不可視文字を表示する
"set list
"listで表示される文字のフォーマットを指定する
"set listchars=eol:$,tab:>\ ,extends:<
"行番号を表示する
set number
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"検索をファイルの先頭へループしない
"set nowrapscan

"ファイル内の<Tab>文字を画面上の見た目で何文字分に展開するか
set tabstop=8
"シフトオペレータ(>>や<<)などで挿入/削除されるインデントの幅
set shiftwidth=2
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"入力された<Tab>文字をスペースに展開しない
"set noexpandtab

"ペースト時にインデントしない
"有効にするとautoindentやend補完が効かなくなる
"set paste
set pastetoggle=<C-e>

"行末の空白をハイライトする
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\t\+\|\s\+$/
augroup END

" vimgrepで常にquickfix-windowを開く（|cw する）
autocmd QuickFixCmdPost *grep* cwindow

" ----------------------------------------------------
"   plugin settings
" ----------------------------------------------------
" nerdtree
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 2
"let g:NERDTreeDirArrows=0
let NERDTreeWinSize = 25
nnoremap <silent><C-e> :NERDTreeToggle<CR>
if !argc()
  autocmd vimenter * NERDTree|normal gg3j
endif

" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" vim-edgemotion
map <C-j> <Plug>(edgemotion-j)
map <C-k> <Plug>(edgemotion-k)

" vim-endwise
let g:endwise_no_mappings = 1
autocmd FileType lua,ruby,sh,zsh,vb,vbnet,aspvbs,vim imap <buffer> <CR> <CR><Plug>DiscretionaryEnd

" ----------------------------------------------------
"   dein.vim (plugin manager. For Vim 7.4 or above.)
" ----------------------------------------------------
let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#add('thinca/vim-quickrun')
  call dein#add('vim-jp/vimdoc-ja')
  call dein#add('ConradIrwin/vim-bracketed-paste')

  " tree
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')

  " Git
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-rhubarb')
  call dein#add('cohama/agit.vim')
  call dein#add('clear-code/insert-git-log.vim')
  call dein#add('kana/vim-gf-user')
  call dein#add('kana/vim-gf-diff')
  call dein#add('clear-code/git-diff-unified.vim')

  " move
  call dein#add('haya14busa/vim-edgemotion')

  " comp
  call dein#add('tpope/vim-endwise')
  call dein#add('tpope/vim-surround')
  call dein#add('mattn/emmet-vim')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('junegunn/vim-easy-align')

  " search
  call dein#add('rking/ag.vim')
  call dein#add('haya14busa/incsearch.vim')
  call dein#add('ctrlpvim/ctrlp.vim')

  " lang
  call dein#add('othree/html5.vim')
  call dein#add('tpope/vim-rails')
  call dein#add('vim-scripts/rest.vim')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
