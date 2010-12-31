" On Macs, copy the selected text or whole file to the clipboard as syntax colored RTF

function! s:CopySyntax() range
  execute (a:firstline + 1) . "," . a:lastline . 'TOhtml'
  %!textutil -stdin -stdout -cat rtf -format html
  %!pbcopy
  q!
endfunction

command! -range=% -nargs=0 CopySyntax :<line1>,<line2>call s:CopySyntax()
noremap <D-C> :CopySyntax<CR>
