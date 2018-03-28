" itchyny/lightline.vim
set laststatus=2
set showtabline=2
let g:lightline = {
      \ 'colorscheme': 'default',
      \ 'active': {
      \   'left': [
      \             [ 'readonly', 'filename', 'modified' ],
      \           ],
      \   'right': [
      \              [ 'gitbranch' ],
      \              [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'mode', 'paste' ],
      \            ]
      \ },
      \ 'inactive': {
      \   'left': [
      \             [ 'readonly', 'filename', 'modified' ],
      \           ],
      \   'right': [
      \              [ 'lineinfo' ],
      \              [ 'percent' ],
      \            ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'bufferinfo': 'lightline#buffer#bufferinfo',
      \   'filename': 'LightLineFilename',
      \ },
      \ 'tabline': {
      \   'left': [[ 'bufferbefore', 'buffercurrent', 'bufferafter' ]],
      \   'right': [],
      \ },
      \ 'component_expand': {
      \   'buffercurrent': 'lightline#buffer#buffercurrent',
      \   'bufferbefore': 'lightline#buffer#bufferbefore',
      \   'bufferafter': 'lightline#buffer#bufferafter',
      \ },
      \ 'component_type': {
      \   'buffercurrent': 'tabsel',
      \   'bufferbefore': 'raw',
      \   'bufferafter': 'raw',
      \ },
      \ 'component': {
      \   'separator': '',
      \ },
      \ }
function! LightLineFilename()
  return expand('%')
endfunction
" remap arrow keys
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>

" lightline-buffer ui settings
" replace these symbols with ascii characters if your environment does not support unicode
"let g:lightline_buffer_logo = ' '
"let g:lightline_buffer_readonly_icon = ''
"let g:lightline_buffer_modified_icon = '✭'
"let g:lightline_buffer_git_icon = ' '
"let g:lightline_buffer_ellipsis_icon = '..'
"let g:lightline_buffer_expand_left_icon = '◀ '
"let g:lightline_buffer_expand_right_icon = ' ▶'
"let g:lightline_buffer_active_buffer_left_icon = ''
"let g:lightline_buffer_active_buffer_right_icon = ''
"let g:lightline_buffer_separator_icon = '  '

" lightline-buffer function settings
"let g:lightline_buffer_show_bufnr = 1
"let g:lightline_buffer_rotate = 0
"let g:lightline_buffer_fname_mod = ':t'
"let g:lightline_buffer_excludes = ['vimfiler']
"
"let g:lightline_buffer_maxflen = 30
"let g:lightline_buffer_maxfextlen = 3
"let g:lightline_buffer_minflen = 16
"let g:lightline_buffer_minfextlen = 3
"let g:lightline_buffer_reservelen = 20
