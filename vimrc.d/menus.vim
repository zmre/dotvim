if !has("gui_running")
  " Setup console access to menu with F10 or ,m
  " mappings are in setup file
  source $VIMRUNTIME/menu.vim
  set wildmenu
  set cpo-=<
  set wcm=<C-Z>
endif

" vim-fugitive plugin
menu Plugin.Git.Edit :Gedit<CR>
menu Plugin.Git.Status :Gstatus<CR>
menu Plugin.Git.Blame :Gblame<CR>
menu Plugin.Git.Commit :Gcommit<CR>
menu Plugin.Git.Diff :Gdiff<CR>
menu Plugin.Git.Log :Glog<CR>
menu Plugin.Git.Split :Gsplit<CR>
menu Plugin.Git.Vertical\ Split :Gvsplit<CR>
menu Plugin.Git.Grep\.\.\. :Ggrep
menu Plugin.Git.Change\ Dir\.\.\. :Gcd
menu Plugin.Git.Change\ Local\ Dir\.\.\. :Glcd
menu Plugin.Git.Move\.\.\. :Gmove
menu Plugin.Git.Remove :Gremove

" vim-rails (rails.vim) plugin
" turns out the plugin handles this with the proper settings
" menu Plugin.Rails.Go\ To\ Alternate :A<CR>
" menu Plugin.Rails.Go\ To\ Related :R<CR>
" menu Plugin.Rails.Go\ To\ Model :Rmodel<CR>
" menu Plugin.Rails.Go\ To\ View :Rview<CR>
" menu Plugin.Rails.Go\ To\ Controller :Rcontroller<CR>
" menu Plugin.Rails.Go\ To\ Environment :Renvironment<CR>
" menu Plugin.Rails.Go\ To\ Fixtures :Rfixtures<CR>
" menu Plugin.Rails.Go\ To\ Helper :Rhelper<CR>
" menu Plugin.Rails.Go\ To\ Javascript :Rjavascript<CR>
" menu Plugin.Rails.Go\ To\ Stylesheet :Rstylesheet<CR>
" menu Plugin.Rails.Go\ To\ Layout :Rlayout<CR>
" menu Plugin.Rails.Rake :Rake<CR>
" menu Plugin.Rails.Project\ Tree :Rtree<CR>
" menu Plugin.Rails.View\ Log :Rlog<CR>
" menu Plugin.Rails.Generate\ Tags :Rtags<CR>
" menu Plugin.Rails.Find\ File\.\.\. :Rfind
" menu Plugin.Rails.Open\ File\ Under\ Cursor gf

