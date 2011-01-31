"""""""""" Function Keys """""""""""""
" Make F1 be the escape key to avoid accidents
map! #1 <Esc>
nmap #1 <Esc>

" Make F2 bring up the project explorer
map #2 :NERDTreeToggle<CR>
map! #2 :NERDTreeToggle<CR>

" Make F3 bring up project search (cmd-t or ack)
map #3 :Ack<Space>
map! #3 :Ack<Space>

" Make F4 toggle showing invisible characters
map _z :set list<CR>:map #4 _Z<CR>
map _Z :set nolist<CR>:map #4 _z<CR>
map #4 _Z

" Make F7 toggle the tags drawer
map #7 :TlistToggle<CR>
map! #7 :TlistToggle<CR>

" Make F8 toggle the yankring
map #8 :YRShow<CR>
map! #8 :YRShow<CR>




""""""""" Namespaced Shortcuts """""""""""

" NOTE: for each F key, make corresponding <leader># key in case terminal is stupid
nnoremap <leader>1 <F1>
nnoremap <leader>2 <F2>
nnoremap <leader>3 <F3>
nnoremap <leader>4 <F4>
nnoremap <leader>5 <F5>
nnoremap <leader>6 <F6>
nnoremap <leader>7 <F7>
nnoremap <leader>8 <F8>
nnoremap <leader>9 <F9>
nnoremap <leader>0 <F10>


" use ',/' to clear the search
nnoremap <leader>/ :noh<CR>
" reduce multiple blank lines to one
nnoremap <leader>b GoZ<Esc>:g/^$/.,/./-j<CR>Gdd
" reduce multiple blanks with spaces
nnoremap <leader>n   GoZ<Esc>:g/^[ <Tab>]*$/.,/[^ <Tab>]/-j<CR>Gdd
" use ,W to kill trailing whitespace on lines
nnoremap <leader>W :call StripTrailingWhitespaces()<CR>
" bring up grep-like recursive search of curdir
nnoremap <leader>a :Ack
" display hex value of char under cursor
nnoremap <leader>h ga
" Start an edit command with current directory spelled out
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>
" Set cwd to current file's dir
map <leader>cd :cd %:h<CR>
map <leader>lcd :lcd %:h<CR>

" Automatic shell
nnoremap <leader>sh :ConqueTermVSplit bash<CR><ESC>:set nolist<CR>a

if !has("gui_running")
  nnoremap <leader>m :emenu <C-Z>
  map #0 :emenu <C-Z>
endif


""""""""" Global Shortcuts """""""""""""

" Make j and k move up and down through wrapped lines
nnoremap j gj
nnoremap k gk
" Yank to end of line using more familiar method
nnoremap Y y$
" Bubble lines up and down using the unimpaired plugin
nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [eg
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

" Setup Cmd-/ to toggle comments with NERD Commenter
nmap <D-/> ,c<Space>
vmap <D-/> ,c<Space>
imap <D-/> <C-O>,c<Space>
"map! <D-/> :NERDComToggleComment<CR>
