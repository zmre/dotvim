" Mac key bindings
map <S-D-t> :tabnew<CR>
map! <S-D-t> <ESC>:tabnew<CR>
map <S-D-Left> :tabprevious<CR>
map! <S-D-Left> <ESC>:tabprevious<CR>
map <S-D-Right> :tabnext<CR>
map! <S-D-Right> <ESC>:tabnext<CR>
map <S-D-w> :tabclose<CR>
map! <S-D-w> <ESC>:tabclose<CR>

if has("gui_running")
	if exists("s:did_mac_gvimrc")
		" echo "Already loaded Mac menu file."
		finish
	else
		let s:did_mac_gvimrc = 1
	endif
	silent! aunmenu &File.&Open\.\.\.
	silent! amenu 10.310 &File.&Open\.\.\.<Tab><D-o> <D-o>

	silent! aunmenu &File.&New
	silent! amenu 10.325 &File.&New<Tab><D-n> <D-n>

	silent! aunmenu &File.&Close
	silent! amenu 10.330 &File.&Close<Tab><D-w> <D-w>

	silent! aunmenu &File.&Save
	silent! amenu 10.340 &File.&Save<Tab><D-s> <D-s>

	silent! aunmenu &File.Save\ &As\.\.\.
	silent! amenu 10.350 &File.Save\ &As\.\.\.<Tab><D-S>	<D-S-s>

	" map <D-p> <print>??
	" <D-q> is handled by the OS.
	"
	" From the Edit menu of SimpleText:
	silent! aunmenu &Edit.&Undo
	silent! amenu 20.310 &Edit.&Undo<Tab><D-z> <D-z>

	silent! vunmenu &Edit.Cu&t
	silent! vmenu 20.340 &Edit.Cu&t<Tab><D-x> <D-x>

	silent! vunmenu &Edit.&Copy
	silent! vmenu 20.350 &Edit.&Copy<Tab><D-c> <D-c>
	silent! cunmenu &Edit.&Copy
	silent! cmenu 20.350 &Edit.&Copy<Tab><D-c> <D-c>

	silent! aunmenu &Edit.&Paste
	silent! nmenu 20.360 &Edit.&Paste<Tab><D-v> <D-v>
	silent! cmenu	     &Edit.&Paste<Tab><D-v> <D-v>
	silent! vmenu	     &Edit.&Paste<Tab><D-v> <D-v>
	silent! imenu	     &Edit.&Paste<Tab><D-v> <D-v>

	silent! aunmenu &Edit.&Select\ All
	silent! amenu 20.400 &Edit.&Select\ All<Tab><D-a>	<D-a>

	silent! aunmenu &Edit.&Find
	silent! amenu 20.410 &Edit.&Find<Tab><D-f>	<D-f>
	silent! amenu 20.420 &Edit.&Next<Tab><D-g>	<D-g>
	silent! vmenu <silent> 20.420 &Edit.Find\ &Selection "9y/<C-R>9<CR>
		\:if strlen(@9) > 1 <Bar>
		\ exe 'norm!v/' . @9 . '/e' . "<Bslash><lt>CR>"<Bar>
		\ else <Bar> exe "norm!v" <Bar> endif<CR>
endif
