let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/ghq/github.com/micheam/examples-go/generic-sort
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd main.go
edit main.go
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 29 + 30) / 60)
exe 'vert 1resize ' . ((&columns * 70 + 70) / 141)
exe '2resize ' . ((&lines * 29 + 30) / 60)
exe 'vert 2resize ' . ((&columns * 70 + 70) / 141)
exe '3resize ' . ((&lines * 28 + 30) / 60)
exe 'vert 3resize ' . ((&columns * 70 + 70) / 141)
exe '4resize ' . ((&lines * 28 + 30) / 60)
exe 'vert 4resize ' . ((&columns * 70 + 70) / 141)
argglobal
balt /usr/local/Cellar/go/1.15.5/libexec/src/sort/sort.go
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 14 - ((13 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 0
lcd ~/ghq/github.com/micheam/examples-go/generic-sort
wincmd w
argglobal
if bufexists("~/ghq/github.com/micheam/examples-go/generic-sort/README.md") | buffer ~/ghq/github.com/micheam/examples-go/generic-sort/README.md | else | edit ~/ghq/github.com/micheam/examples-go/generic-sort/README.md | endif
balt ~/ghq/github.com/micheam/examples-go/generic-sort/main.go
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 16 - ((15 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
lcd ~/ghq/github.com/micheam/examples-go/generic-sort
wincmd w
argglobal
if bufexists("~/ghq/github.com/micheam/examples-go/generic-sort/main_test.go") | buffer ~/ghq/github.com/micheam/examples-go/generic-sort/main_test.go | else | edit ~/ghq/github.com/micheam/examples-go/generic-sort/main_test.go | endif
balt ~/ghq/github.com/micheam/examples-go/generic-sort/main.go
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 11 - ((10 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 011|
lcd ~/ghq/github.com/micheam/examples-go/generic-sort
wincmd w
argglobal
enew
file ~/ghq/github.com/micheam/examples-go/generic-sort/GO_TEST_RESULT
balt ~/ghq/github.com/micheam/examples-go/generic-sort/main_test.go
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/ghq/github.com/micheam/examples-go/generic-sort
wincmd w
exe '1resize ' . ((&lines * 29 + 30) / 60)
exe 'vert 1resize ' . ((&columns * 70 + 70) / 141)
exe '2resize ' . ((&lines * 29 + 30) / 60)
exe 'vert 2resize ' . ((&columns * 70 + 70) / 141)
exe '3resize ' . ((&lines * 28 + 30) / 60)
exe 'vert 3resize ' . ((&columns * 70 + 70) / 141)
exe '4resize ' . ((&lines * 28 + 30) / 60)
exe 'vert 4resize ' . ((&columns * 70 + 70) / 141)
tabnext 1
badd +1 ~/ghq/github.com/micheam/examples-go/generic-sort/main.go
badd +16 /usr/local/Cellar/go/1.15.5/libexec/src/sort/sort.go
badd +1 ~/ghq/github.com/micheam/examples-go/generic-sort/README.md
badd +0 ~/ghq/github.com/micheam/examples-go/generic-sort/main_test.go
badd +0 ~/ghq/github.com/micheam/examples-go/generic-sort/GO_TEST_RESULT
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
