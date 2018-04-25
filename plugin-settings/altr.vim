" 'kana/vim-altr'

call altr#define('%.js', '%.controller.js', '%.html')
call altr#define('%.service.js', '%.service.spec.js')

" gettext
call altr#define('doc/source/%.rst', 'doc/locale/ja/LC_MESSAGES/%.po')
