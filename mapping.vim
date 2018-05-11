" 行末までコピー（改行なし）
" https://gitter.im/vim-jp/reading-vimrc?at=5ac8d6065f188ccc153dde71
nnoremap Y y$

nnoremap <C-h> :set hlsearch!<CR>

" <Up> <Down>の方が便利なので入れ替え
" https://gitter.im/vim-jp/reading-vimrc?at=5ac8d6f801a2b40f382e9043
"   <C-n> <C-p> は常に履歴を1つずつ遡ります
"   <Up> <Down> は、入力済みの部分に前方一致した履歴のみを遡ります
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <Up> <C-p>
cnoremap <Down> <C-n>
