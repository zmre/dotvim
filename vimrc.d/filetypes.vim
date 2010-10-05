" echo &ft to determine current filetype
if has("autocmd")
  if has("filetype")
    autocmd BufRead ~/mail/*        setlocal filetype=mail
    autocmd BufRead /tmp/mutt*      setlocal filetype=mail
    autocmd BufRead ~/.signature*   setlocal filetype=mail
    autocmd BufRead ~/.mutt/*       setlocal filetype=muttrc
    autocmd BufRead ~/.sawfish/custom setlocal filetype=lisp
    autocmd BufRead *.*html*        setlocal filetype=html
    autocmd BufRead *.css*          setlocal filetype=css
    autocmd BufRead *.txt*          setlocal textwidth=76
  endif
  if v:version >= 600
    " Load all custom functions for specific filetypes
    runtime! vimrc.d/filetypes/*.vim

    " Customize parameters for file types
    autocmd FileType c call SetupC()
    autocmd FileType ruby call SetupRuby()
    autocmd FileType php call SetupPHP()
    autocmd FileType php3 call SetupPHP()
    autocmd FileType perl call SetupPerl()
    autocmd FileType python call SetupPython()
    autocmd FileType mason call SetupMason()
    autocmd FileType text call SetupText()
    autocmd FileType mail call SetupText()
    autocmd FileType vim call SetupVim()
    autocmd FileType sh call SetupBash()
    autocmd FileType csh call SetupBash()
    autocmd FileType tcsh call SetupBash()
    autocmd FileType zsh call SetupBash()
    autocmd FileType html call SetupWeb()
    autocmd FileType xhtml call SetupWeb()
    autocmd FileType css call SetupWeb()
    autocmd FileType xml call SetupWeb()
    autocmd FileType cf call SetupColdFusion()
    autocmd FileType javascript call SetupJavascript()
    autocmd FileType spec call SetupSpec()
    " autocmd FileType binary call SetupBinary()
  endif

  if has("filetype")
    au BufNewFile,BufRead *.mc set filetype=mason
    au BufRead,BufNewFile *.exe set filetype=binary
    au BufRead,BufNewFile *.dll set filetype=binary
    au BufRead,BufNewFile *.bin set filetype=binary
    filetype on
  endif

  augroup vimrcEx
    au!

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event
    " handler (happens when dropping a file on gvim).
    autocmd BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \   exe "normal g`\"" |
          \ endif
  augroup END

  augroup Binary
    au!
    au BufReadPre * if &ft=="binary" | let &bin=1 | call SetupBinary() | endif
    au BufReadPost * if &ft=="binary" && &modifiable | %!xxd
    au BufReadPost * echo "Only edit the hex portion or changes won't stick"
    au BufReadPost * set ft=xxd | set nomod | endif
    au BufWritePre * if &bin | %!xxd -r
    au BufWritePre * endif
    au BufWritePost * if &bin | %!xxd
    au BufWritePost * set nomod | endif
  augroup END
endif
