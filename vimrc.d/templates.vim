if has("autocmd")
  " Read in template files for certain file types
  autocmd BufNewFile *.c          0read ~/.vim/skel/skel.c
  autocmd BufNewFile *.cpp        0read ~/.vim/skel/skel.cpp
  autocmd BufNewFile *.java       0read ~/.vim/skel/skel.java
  autocmd BufNewFile *.php        0read ~/.vim/skel/skel.php
  autocmd BufNewFile *.pl         0read ~/.vim/skel/skel.pl
  autocmd BufNewFile *.js         0read ~/.vim/skel/skel.js
endif
