if v:version >= 600
  if &t_Co > 2 || has("gui_running")
    " Setup visual elements (except gui specific fonts, in gui.vim)
    set background=dark
    "colorscheme Dim
    "colorscheme oceanblack
    "colorscheme slate2
    "colorscheme Dark2
    if &t_Co > 8 || has("gui_running")
      colorscheme ir_black
    else
      colorscheme Dim
    endif


    " Switch syntax highlighting on, when the terminal has colors
    " Also switch on highlighting the last used search pattern.
    syntax on
    filetype plugin on
    filetype indent on
    set hlsearch
    highlight! TODO ctermfg=0 ctermbg=3
    syn keyword TODO PWTODO FIXME TODO Todo todo contained

    if (v:version >= 700)
      highlight MatchParen  term=underline cterm=bold ctermfg=DarkGreen ctermbg=NONE
      "tab pages line, not active tab page label
      highlight TabLine     term=underline cterm=underline ctermfg=Blue ctermbg=NONE
      "tab pages line, where there are no labels
      highlight TabLineFill term=underline cterm=underline ctermfg=Blue ctermbg=NONE
      "tab pages line, active tab page label
      highlight TabLineSel  term=underline cterm=bold ctermfg=Green ctermbg=NONE
    endif
  endif
endif
