function! SetupSpec()
  call ResetDefaults()
  call SetupProgramming()
  map #5 :w<CR>:!rpmbuild -ba %<CR>
  map! #5 <ESC>:w<CR>:!rpmbuild -ba %<CR>
endfunction
