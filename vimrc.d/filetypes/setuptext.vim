function! SetupText()
  call ResetDefaults()
  " For all text files setlocal 'textwidth' to 78 characters.
  setlocal textwidth=78
  setlocal joinspaces  " insert two spaces after sentence end when joining
  setlocal noai
  setlocal nonu        " show line numbers
  setlocal noet
  setlocal ignorecase
  setlocal nosmarttab
endfunction
