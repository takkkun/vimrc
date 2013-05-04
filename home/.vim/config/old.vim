" 234567890123456789012345678901234567890123456789012345678901234567890123456789

set nocompatible " be iMproved

set t_Co=256

syntax on
let mapleader = ','

inoremap <C-d> <Del>

if has('mac')
  set noimdisable " use AquaSKK
endif

set hidden
set wildmenu
set showcmd
set hlsearch
set backspace=indent,eol,start
set list
set listchars=tab:>-,trail:_
set autoindent
set nostartofline
set ruler

set laststatus=2
" set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=\ (%v,%l)/%L%8P\ 

function! StlFnc()
  return '[' . (&l:ft != '' ? &l:ft . ',' : '') . &l:ff[0] . ',' .  (&l:fenc != '' ? &l:fenc : &enc) . ']'
endfunction
" set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%y%{exists('*SkkGetModeStr')?SkkGetModeStr():''}%=%l(%L),%c%V%8P

set clipboard=unnamed,autoselect

set confirm
set visualbell
set t_vb=
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=2
set softtabstop=2
set expandtab
set display+=lastline
map Y $y
nnoremap <C-L> :nohl<CR><C-L>
