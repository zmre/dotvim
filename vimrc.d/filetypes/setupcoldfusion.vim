function! SetupColdFusion()
  call SetupWeb()
  setlocal cinwords=cfif,cfelse,cfquery,cfoutput
  setlocal nonu        " don't show line numbers
  let b:match_ignorecase = 1
  let b:match_words = '<:>,<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=/[ou]l>,<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'
  set wrap      " wrap lines
  setlocal textwidth=0
endfunction
