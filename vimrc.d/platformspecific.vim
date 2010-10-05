if v:version >= 600
  let s:platform = system("uname")
  if s:platform =~? "Darwin"
    "runtime! vimrc.d/mac.vim
  else
    "runtime! vimrc.d/linux.vim
  endif
endif
