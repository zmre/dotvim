let g:CommandTMaxFiles=15000
let g:CommandTMaxDepth=15
let g:CommandTMaxHeight=10
function! CommandTSeed(word)
    execute "CommandT"
    let chars = split(a:word,'\zs')
    for char in chars
      call CommandTHandleKey(char2nr(char))
    endfor
endfunction
