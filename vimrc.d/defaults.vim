" Change local settings for only the current buffer
" Note: including this causes it to be called
function! ResetDefaults()
  " Display hidden chars
  set list
  set listchars=tab:▸\ ,trail:+   " put +++ for trailing chars and > for tabs
  setlocal nojoinspaces  " don't insert two spaces after sentences on joins
  setlocal nobinary
  setlocal display=lastline
  set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility

  " line wrapping and numbering stuff
  setlocal wrap            " wrap lines
  setlocal sbr=            " show = at beginning of wrapped lines
  if has("siso")
    setlocal siso=2        " keep cursor one col from end of line
  endif
  setlocal ss=2            " min number of columns to scroll from edge
  setlocal scrolloff=4     " when 4 away from edge start scrolling
  setlocal sw=4            " scrollbar width of 4

  " Make tabs be spaces of 4 characters by default
  setlocal tabstop=4
  setlocal shiftwidth=4
  setlocal softtabstop=4
  setlocal expandtab       " turn tabs to spaces by default
  setlocal autoindent
  setlocal visualbell
  setlocal cursorline
  setlocal ttyfast
  setlocal formatoptions=cqrn1   " t=text, c=comments, q=format with "gq"
  setlocal textwidth=79
  setlocal encoding=utf-8
  setlocal showmatch       " auto hilights matching bracket or paren
  silent! augroup! StripTrailingWhitespace " delete the autocmd
endfunction

call ResetDefaults()
