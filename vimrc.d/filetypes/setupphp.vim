function! SetupPHP()
  call ResetDefaults()
  call SetupProgramming()
  syn keyword phpTodo PWTODO FIXME TODO Todo todo contained
  " as of vim 6.3, indentexpr is setlocal to GetPhpIndent(), but it is buggy for me
  " setlocal indentexpr=
  " Map F5 to build and lint check commands
  map #5 :w<CR>:!php -l "%"<CR>
  map! #5 <ESC>:w<CR>:!php -l "%"<CR>
endfunction
