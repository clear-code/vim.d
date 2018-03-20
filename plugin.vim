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

" open-browser.vim
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" vim-quickrun
let g:quickrun_config = {}
"" vim-markdown
let g:quickrun_config['markdown'] = {
      \   'outputter': 'browser'
      \ }

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
  " repository size is large
  " call dein#add('vim-jp/vimdoc-ja')
  call dein#add('ConradIrwin/vim-bracketed-paste')
  call dein#add('tyru/open-browser.vim')
  call dein#add('kana/vim-operator-user')
  call dein#add('tyru/operator-camelize.vim')
  call dein#add('kana/vim-altr')

  " buffer
  call dein#add('jlanzarotta/bufexplorer')

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
  call dein#add('airblade/vim-gitgutter')

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
  call dein#add('tpope/vim-markdown')

  " 上記以外のプラグインを追加する場合、
  " ~/.vim/dein/dein.toml を作成して以下のように記述してください。
  "
  "   [[plugins]]
  "   repo = '.../...'
  "
  "   [[plugins]]
  "   repo = '.../...'
  "
  let s:toml_path = s:dein_dir . '/dein.toml'
  if filereadable(s:toml_path)
    call dein#load_toml(s:toml_path, {'lazy': 0})
  end
  let s:toml_lazy_path = s:dein_dir . '/dein_lazy.toml'
  if filereadable(s:toml_lazy_path)
    call dein#load_toml(s:toml_lazy_path, {'lazy': 1})
  end

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
