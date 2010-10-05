function! SetupBinary()
  setlocal binary
  setlocal display=uhex
  setlocal nowrap
  setlocal textwidth=0
  if &modifiable && !exists(&bin)
    %!xxd
    let &bin=1
    setlocal ft=xxd
    setlocal nomod
    echo "Only edit the hex portion or changes won't stick"
  endif
endfunction
