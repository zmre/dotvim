aunmenu &File.&Open\.\.\.
amenu 10.310 &File.&Open\.\.\.<Tab><D-o> <D-o>

aunmenu &File.&New
amenu 10.325 &File.&New<Tab><D-n> <D-n>

aunmenu &File.&Close
amenu 10.330 &File.&Close<Tab><D-w> <D-w>

aunmenu &File.&Save
amenu 10.340 &File.&Save<Tab><D-s> <D-s>

aunmenu &File.Save\ &As\.\.\.
amenu 10.350 &File.Save\ &As\.\.\.<Tab><D-S>	<D-S-s>

" map <D-p> <print>??
" <D-q> is handled by the OS.
"
" From the Edit menu of SimpleText:
aunmenu &Edit.&Undo
amenu 20.310 &Edit.&Undo<Tab><D-z> <D-z>

vunmenu &Edit.Cu&t
vmenu 20.340 &Edit.Cu&t<Tab><D-x> <D-x>

vunmenu &Edit.&Copy
vmenu 20.350 &Edit.&Copy<Tab><D-c> <D-c>
cunmenu &Edit.&Copy
cmenu 20.350 &Edit.&Copy<Tab><D-c> <D-c>

aunmenu &Edit.&Paste
nmenu 20.360 &Edit.&Paste<Tab><D-v> <D-v>
cmenu	     &Edit.&Paste<Tab><D-v> <D-v>
vmenu	     &Edit.&Paste<Tab><D-v> <D-v>
imenu	     &Edit.&Paste<Tab><D-v> <D-v>

aunmenu &Edit.&Select\ All
amenu 20.400 &Edit.Select\ &All<Tab><D-a>	<D-a>

aunmenu &Edit.&Find
amenu 20.410 &Edit.&Find<Tab><D-f>	<D-f>
amenu 20.420 &Edit.&Next<Tab><D-g>	<D-g>
vmenu <silent> 20.420 &Edit.Find\ &Selection "9y/<C-R>9<CR>
	\:if strlen(@9) > 1 <Bar>
	\ exe 'norm!v/' . @9 . '/e' . "<Bslash><lt>CR>"<Bar>
	\ else <Bar> exe "norm!v" <Bar> endif<CR>
