if !has("gui_running")
  " Setup console access to menu with F10
  source $VIMRUNTIME/menu.vim
  set wildmenu
  set cpo-=<
  set wcm=<C-Z>
  map <F10> :emenu <C-Z>
endif

" vim-fugitive plugin
menu Plugin.Git.Blame :Gblame<CR>
menu Plugin.Git.Commit :Gcommit<CR>
menu Plugin.Git.Diff :Gdiff<CR>
menu Plugin.Git.Log :Glog<CR>
menu Plugin.Git.Status :Gstatus<CR>
menu Plugin.Git.Edit :Gedit<CR>
menu Plugin.Git.Split :Gsplit<CR>
menu Plugin.Git.Vertical\ Split :Gvsplit<CR>
menu Plugin.Git.Grep\.\.\. :Ggrep
menu Plugin.Git.Change\ Dir\.\.\. :Gcd
menu Plugin.Git.Change\ Local\ Dir\.\.\. :Glcd
menu Plugin.Git.Move\.\.\. :Gmove
menu Plugin.Git.Remove :Gremove


