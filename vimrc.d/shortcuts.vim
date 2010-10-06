"""""""""" Function Keys """""""""""""

" Make F1 be the escape key to avoid accidents
map! #1 <Esc>
nmap #1 <Esc>

" Make F2 bring up the project explorer
map #2 :NERDTreeToggle<CR>
map! #2 :NERDTreeToggle<CR>

" Make F3 bring up project search (cmd-t or ack)
map #3 :Ack
map! #3 :Ack

" Make F4 toggle showing invisible characters
map _z :set list<CR>:map #4 _Z<CR>
map _Z :set nolist<CR>:map #4 _z<CR>
map #4 _Z

" NOTE: F5 is likely mapped to lint checks by filetype files




""""""""" Namespaced Shortcuts """""""""""

" use ',/' to clear the search
nnoremap <leader>/ :noh<CR>
" reduce multiple blank lines to one
nnoremap <leader>b GoZ<Esc>:g/^$/.,/./-j<CR>Gdd
" reduce multiple blanks with spaces
nnoremap <leader>n   GoZ<Esc>:g/^[ <Tab>]*$/.,/[^ <Tab>]/-j<CR>Gdd
" use ,W to kill trailing whitespace on lines
nnoremap <leader>W :call <SID>StripTrailingWhitespaces()<CR>
" bring up grep-like recursive search of curdir
nnoremap <leader>a :Ack
" display hex value of char under cursor
nnoremap <leader>h ga


""""""""" Global Shortcuts """""""""""""

" Make j and k move up and down through wrapped lines
nnoremap j gj
nnoremap k gk
" Yank to end of line using more familiar method
nnoremap Y y$
" Bubble lines up and down using the unimpaired plugin
nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Visually select the text that was last edited/pasted
" Similar to gv but works after paste
nmap gV `[v`]

" Change window splits with ctrl key up down left right
" Below now handled by minibufexpl plugin
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

map <D-/> :NERDComToggleComment<CR>
map! <D-/> :NERDComToggleComment<CR>
