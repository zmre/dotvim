function! SetupProgramming()
  "SyntasticEnable
  setlocal matchpairs+=<:>  " % match < and > chars
  setlocal infercase " fuzzy case for keyword completion

  if v:version >= 703
    setlocal relativenumber
    " Use the super clever tag for autocompletion and make it work like standard IDEs
    inoremap <Tab> <C-R>=SuperCleverTab()<cr>
    set completeopt=longest,menuone
    inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
    inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
    inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

  else
    setlocal nu        " show line numbers
  endif
  setlocal ai        " autoindent to same level as previous line
  setlocal noci " don't copy the indent of the previous line including space/tab mixes
  setlocal nosmarttab    " use shiftwidth or tabstop intelligently
  " setlocal smartindent    " indent after { and cinwords words
  setlocal cindent
  setlocal cinoptions=n1s,:1s,>1s,(1s,u1s,l1,)40,b0,+1s,m1,}0,{0,e0,j1
  " Which keywords should indent
  setlocal cinwords=if,function,else,elif,elseif,try,except,finally,while,do,foreach,for,switch,case,<?php
  setlocal textwidth=0
  " TODO: setup autocmd to strip trailing whitespace lines and spaces per line
  if has("autocmd")
    augroup StripTrailingWhitespace
      au!
      autocmd BufWritePre * :call StripTrailingWhitespaces()
    augroup END
  endif
endfunction
