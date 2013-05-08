" Font

if has('gui')
  set guifont=Ricty\ Regular\ for\ Powerline:h16
endif

set linespace=1
set ambiwidth=double

" Status line

set laststatus=2
let g:Powerline_symbols = 'fancy'

" Look cool!

colorscheme railscasts

if has('gui')
  set transparency=5

  function! s:transparency_change_to(diff)
    let &transparency = a:diff + &transparency
    let g:transparency = &transparency
  endfunction

  nnoremap <Up>   :<C-u>call <SID>transparency_change_to( 5)<CR>
  nnoremap <Down> :<C-u>call <SID>transparency_change_to(-5)<CR>
else
  nnoremap <Up>   <Nop>
  nnoremap <Down> <Nop>
endif

" Look smart!

set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
