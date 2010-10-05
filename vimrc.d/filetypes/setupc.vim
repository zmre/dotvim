function! SetupC()
  call ResetDefaults()
  call SetupProgramming()
  if (! filereadable('Makefile'))
    set makeprg=gcc\ %
  else
    set makeprg=make
  endif
  map #5 :w<CR>:!gcc --fsyntaxonly -Wall "%"<CR>
endfunction

