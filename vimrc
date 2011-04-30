" Load pathogen, used to install vim plugins as bundles in .vim/bundle
filetype off
call pathogen#runtime_append_all_bundles()
" Removed the following line since it significantly slows the loading of vim
"call pathogen#helptags()
filetype plugin indent on

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Don't allow vim settings embedded in text files for security reasons
set modelines=0
" don't allow current dir .vimrc and .exrc files.  display mappings.
set secure

" Note: to see the value of a var, use echo &varname

"set verbose=9        " use for vimrc testing

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50      " keep 50 lines of command line history
set ruler           " show the cursor position all the time
set showcmd         " display incomplete commands
set showmode        " display current mode
set hidden
set cf              " jump to errors based on error files
" First part of statusline here, second part at end of file
if has('statusline')
  set laststatus=2
  set statusline=%f%m%r%h%w\ %y
  "set statusline=%f\ %y%r%1*%m%*%=%<x%02B%4vv%4cc%7l\ %P
  if version >= 700
    au InsertEnter * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
    au InsertLeave * hi StatusLine guifg=#CCCCCC guibg=#202020 gui=italic ctermfg=white ctermbg=darkgray cterm=NONE
    "au InsertLeave * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
  endif
endif


" Backup files are only temporary while writing
set nobackup
set writebackup
if has("backupcopy")
  set backupcopy=auto
endif

" Namespace for custom shortcuts
let mapleader=","
" Fix backspace if necessary
if &term == "xterm"
  set t_kb=
  fixdel
endif

" Get other settings from .vim directory
runtime! vimrc.d/functions.vim
runtime! vimrc.d/defaults.vim
runtime! vimrc.d/tabcomplete.vim
runtime! vimrc.d/search.vim
runtime! vimrc.d/gui.vim
runtime! vimrc.d/menus.vim
runtime! vimrc.d/splitwindows.vim
"runtime! vimrc.d/autocomplete.vim
runtime! vimrc.d/php.vim
runtime! vimrc.d/perl.vim
"runtime! vimrc.d/templates.vim
runtime! vimrc.d/colors.vim
runtime! vimrc.d/platformspecific.vim
runtime! vimrc.d/filetypes.vim
runtime! vimrc.d/shortcuts.vim
runtime! vimrc.d/config_*.vim

set statusline+=%=b%n\ %lx%c\ %P
