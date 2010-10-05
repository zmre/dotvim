function! SetupRuby()
  call ResetDefaults()
  call SetupProgramming()
  syn keyword phpTodo PWTODO FIXME TODO Todo todo contained
  set tw=0 " no textwrap
  set et " expand tabs to spaces
endfunction
