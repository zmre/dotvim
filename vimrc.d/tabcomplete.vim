" Make tab completion more sane
if v:version >= 600
  set wildignore+=*.o,*.obj,*.cmi,*.cmo,*.cma,*.cmx,*.a,*.cmxa,*.rem
  set wildignore+=*.aux,*.blg,*.dvi,*.log,*.pdf,*.ps,*.swp,*.bak
  set wildignore+=*.class,*.pyc,.git,CVS,.svn
  setlocal wildmode=longest,list
  setlocal wildmenu
endif

