let s:tmp_dir = expand('~/.vim/tmp')

if !isdirectory(s:tmp_dir)
  call mkdir(s:tmp_dir, 'p')
endif

" .swp

set backup
exe 'set backupdir=' . s:tmp_dir

" ~

set swapfile
exe 'set directory=' . s:tmp_dir

" .un~

set undofile
exe 'set undodir=' . s:tmp_dir

" .viminfo

exe 'set viminfo+=n' . s:tmp_dir . '/viminfo'
