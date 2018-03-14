"" 原稿文字数(全角の折り返し文字数)
let JpCountChars = 35
"" 日本語の行の連結時には空白を入力しない。
set formatoptions+=mM
"" 現在行を整形
nnoremap <silent> gl :JpFormat<CR>
vnoremap <silent> gl :JpFormat<CR>
"" 自動整形のON/OFF切替
"" 30gCの様にカウント指定すると、現バッファのみ折り返し文字数を指定されたカウントに変更します。
nnoremap <silent> gc :JpFormatToggle<CR>
"" 現バッファを整形
nnoremap <silent> g,rJ :JpFormatAll<CR>
"" 原稿枚数カウント
nnoremap <silent> g,rc :JpCountPages!<CR>
"" 外部ビューアを起動する
nnoremap <silent> <F8> :JpExtViewer<CR>
