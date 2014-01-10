" Font

set guifont=Ricty\ Regular\ for\ Powerline:h16
set linespace=2
set ambiwidth=double

" Window

set columns=169
set lines=46

" Command line

set cmdheight=1

" Look cook!

set background=dark
colorscheme railscasts

set transparency=5

function! s:transparency_change_to(diff)
  let &transparency = a:diff + &transparency
endfunction

nnoremap <C-Up>   :<C-u>call <SID>transparency_change_to( 5)<CR>
nnoremap <C-Down> :<C-u>call <SID>transparency_change_to(-5)<CR>

" Look smart!

set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
