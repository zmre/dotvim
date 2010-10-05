function! SetupPerl()
  call ResetDefaults()
  call SetupProgramming()
  " Map F5 to build and lint check commands
  map #5 :w<CR>:!perl -d "%"<CR>
  map! #5 <ESC>:w<CR>:!perl -d "%"<CR>
  " %               current file name
  " %<              current file name without extension
  " #               alternate file name for current window
  " #<              idem, without extension
  " #31             alternate file number 31
  " #31<            idem, without extension
  " <cword>         word under the cursor
  " <cWORD>         WORD under the cursor (see |WORD|)
  " <cfile>         path name under the cursor
  " <cfile><        idem, without extension
  set makeprg=perl\ -c\ %\ $*
  set errorformat=%f:%l:%m
  set autowrite
endfunction
