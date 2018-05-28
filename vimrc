syntax on
"新しい行のインデントを現在行と同じにする
set autoindent
"バックアップファイルを作るディレクトリ
set backupdir=$HOME/vimbackup
"ファイル選択ダイアログの初期ディレクトリを、開いているファイルと同じディレクトリに設定
set browsedir=buffer
"ヤンクしたテキストをデスクトップのクリップボードにコピー
set clipboard=unnamed
"Vi互換をオフ->不要
" 参考:
"   * https://qiita.com/yu_suke1994/items/e0a19574994a57c8fe17
"   * https://gitter.im/clear-code/ClearCode.vim?at=5b0b6b9954ce2313615cef80
"set nocompatible
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
" Increase history size
set history=1000

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
