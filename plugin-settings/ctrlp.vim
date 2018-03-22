" ctrlpvim/ctrlp.vim

let NERDTreeQuitOnOpen = 1
let NERDTreeWinSize = 75
if !argc()
  autocmd vimenter * NERDTreeClose
  autocmd vimenter * CtrlPMRUFiles
endif

" ref: https://postd.cc/how-to-boost-your-vim-productivity/
let g:ctrlp_use_caching = 0
if executable('pt')
  set grepprg=pt\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'pt %s -l --nocolor -g ""'
elseif executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
endif

" ref: https://qiita.com/oahiroaki/items/d71337fb9d28303a54a8
nnoremap <Leader>e :<C-u>CtrlPMRUFiles<CR>
nnoremap <Leader>ea :<C-u>CtrlPMixed<CR>
nnoremap <Leader>eb :<C-u>CtrlPBuffer<CR>
nnoremap <Leader>ed :<C-u>CtrlPDir<CR>
nnoremap <Leader>ef :<C-u>CtrlP<CR>
nnoremap <Leader>el :<C-u>CtrlPLine<CR>
nnoremap <Leader>em :<C-u>CtrlPMRUFiles<CR>
nnoremap <Leader>eq :<C-u>CtrlPQuickfix<CR>
nnoremap <Leader>es :<C-u>CtrlPMixed<CR>
nnoremap <Leader>et :<C-u>CtrlPTag<CR>

" ref: https://qiita.com/tekkoc/items/8c78e01167953ab513f9
let g:ctrlp_prompt_mappings = {
  \ 'PrtBS()':              ['<c-h>'],
  \ 'PrtDeleteWord()':      ['<c-w>'],
  \ 'PrtCurEnd()':          ['<c-e>'],
  \ 'PrtCurLeft()':         ['<c-b>'],
  \ 'PrtCurRight()':        ['<c-f>'],
  \ 'PrtSelectMove("j")':   ['<c-j>'],
  \ 'PrtSelectMove("k")':   ['<c-k>'],
  \ 'PrtHistory(-1)':       ['<c-n>'],
  \ 'PrtHistory(1)':        ['<c-p>'],
  \ 'AcceptSelection("e")': ['<cr>'],
  \ 'ToggleRegex()':        ['<c-r>'],
  \ 'ToggleByFname()':      ['<c-d>'],
  \ 'PrtExit()':            ['<c-l>', '<esc>', '<c-c>'],
  \ 'ToggleFocus()':        ['<nop>'],
  \ 'PrtExpandDir()':       ['<nop>'],
  \ 'AcceptSelection("h")': ['<nop>'],
  \ 'AcceptSelection("t")': ['<nop>'],
  \ 'AcceptSelection("v")': ['<nop>'],
  \ 'ToggleType(1)':        ['<nop>'],
  \ 'ToggleType(-1)':       ['<nop>'],
  \ 'PrtInsert()':          ['<nop>'],
  \ 'PrtCurStart()':        ['<nop>'],
  \ 'PrtClearCache()':      ['<nop>'],
  \ 'PrtDeleteEnt()':       ['<nop>'],
  \ 'CreateNewFile()':      ['<nop>'],
  \ 'MarkToOpen()':         ['<nop>'],
  \ 'OpenMulti()':          ['<nop>'],
  \ 'PrtDelete()':          ['<nop>'],
  \ 'PrtSelectMove("t")':   ['<nop>'],
  \ 'PrtSelectMove("b")':   ['<nop>'],
  \ 'PrtSelectMove("u")':   ['<nop>'],
  \ 'PrtSelectMove("d")':   ['<nop>'],
  \ }
