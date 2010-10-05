" Change window splits with ctrl key up down left right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
if v:version >= 600
  set splitbelow    " allow splits below
  set splitright    " and to the right
endif
