" 'kana/vim-altr'

call altr#define('%.js', '%.controller.js', '%.html')
call altr#define('%.service.js', '%.service.spec.js')

" gettext
call altr#define('doc/source/%.%', 'doc/locale/ja/LC_MESSAGES/%.po')
call altr#define('doc/source/%/%.%', 'doc/locale/ja/LC_MESSAGES/%.po')

" Jekyll
call altr#define('ja/_posts/%', 'en/_posts/%')
