" Based on
runtime colors/ir_black.vim

let g:colors_name = "grb4"

hi pythonSpaceError ctermbg=red guibg=red

hi Comment ctermfg=darkyellow

"hi StatusLine ctermbg=lightgrey ctermfg=black
"hi StatusLineNC ctermbg=lightgrey ctermfg=black
"hi VertSplit ctermbg=lightgrey ctermfg=black
"hi LineNr ctermfg=lightgrey

hi VertSplit        guifg=#202020     guibg=#606060     gui=NONE      ctermfg=darkgray    ctermbg=darkgray    cterm=NONE
hi StatusLine       guifg=#DDDDDD     guibg=#606060     gui=italic    ctermfg=white       ctermbg=darkgray    cterm=NONE
hi StatusLineNC     guifg=black       guibg=#606060     gui=NONE      ctermfg=blue        ctermbg=darkgray    cterm=NONE
hi LineNr           guifg=#6D6D6D     guibg=black       gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi Folded           guifg=#c0c8d0     guibg=#384058     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

" ir_black doesn't highlight operators for some reason
hi Operator        guifg=#6699CC     guibg=NONE        gui=NONE      ctermfg=lightblue   ctermbg=NONE        cterm=NONE

