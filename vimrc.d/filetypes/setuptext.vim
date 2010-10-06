function! SetupText()
  call ResetDefaults()
  " For all text files setlocal 'textwidth' to 78 characters.
  setlocal joinspaces  " insert two spaces after sentence end when joining
  setlocal noai        " don't autoindent
  setlocal nonu        " don't show line numbers
  setlocal noet        " don't expand tabs to spaces
  setlocal ignorecase
  setlocal nosmarttab
  setlocal spell!
  setlocal spelllang=en_us
  setlocal wrap
  setlocal nolist
  setlocal linebreak
  setlocal textwidth=78
  setlocal formatoptions=tcqa1
  "setlocal formatprg=par\ -w78
endfunction
