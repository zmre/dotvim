function! SetupBash()
  call ResetDefaults()
  call SetupProgramming()
  map #5 :w<CR>:!bash -x "%"<CR>
  map #6 :w<CR>:!bash -nv "%"<CR>
endfunction

