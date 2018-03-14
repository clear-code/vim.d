" 入力モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
"inoremap <C-h> <Left> Backspaceのほうが便利なので無効にしておく
inoremap <C-l> <Right>

" 日本語入力がオンのままでも使えるコマンド(Enterキーは必要)
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap っd dd
nnoremap っy yy

" ""の中身を変更する
nnoremap し” ci"
" ''の中身を変更する
nnoremap し’ ci'

" jjでエスケープ
inoremap <silent> jj <ESC>

" 日本語入力で”っj”と入力してもEnterキーで確定させればインサートモードを抜ける
inoremap <silent> っj <ESC>

" ○や□の文字が崩れる問題を回避
" デメリットもあるっぽい？ https://qiita.com/TsutomuNakamura/items/bd9139942973dfc469cc
set ambiwidth=double
