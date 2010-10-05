"""""""""" Function Keys """""""""""""

" Make F1 be the escape key to avoid accidents
map! #1 <Esc>
nmap #1 <Esc>

" Make F2 bring up the project explorer
map #2 :NERDTreeToggle<CR>
map! #2 :NERDTreeToggle<CR>

" Make F3 bring up project search (cmd-t or ack)
map #3 :Ack<CR>
map! #3 :Ack<CR>

" Make F4 toggle showing invisible characters
map _z :set list<CR>:map #4 _Z<CR>
map _Z :set nolist<CR>:map #4 _z<CR>
map #4 _Z

" NOTE: F5 is likely mapped to lint checks by filetype files




""""""""" Namespaced Shortcuts """""""""""

" use ',/' to clear the search
nnoremap <leader>/ :noh<cr>
" reduce multiple blank lines to one
nnoremap <leader>b GoZ<Esc>:g/^$/.,/./-j<CR>Gdd   
" reduce multiple blanks with spaces
nnoremap <leader>n   GoZ<Esc>:g/^[ <Tab>]*$/.,/[^ <Tab>]/-j<CR>Gdd 
" use ,W to kill trailing whitespace on lines
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" bring up grep-like recursive search of curdir
nnoremap <leader>a :Ack
" display hex value of char under cursor
nnoremap <leader>h ga


""""""""" Global Shortcuts """""""""""""

" Make j and k move up and down through wrapped lines
nnoremap j gj
nnoremap k gk
nnoremap Y y$
