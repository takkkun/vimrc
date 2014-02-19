let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_force_overwrite_statusline = 0

" Data directory

if has('win32')
  let s:ramdisk = 'R:'
elseif has('macunix')
  let s:ramdisk = '/Volumes/RamDisk'
else
  let s:ramdisk = '/mnt/ramdisk'
endif

if isdirectory(s:ramdisk)
  let g:vimfiler_data_directory = s:ramdisk . '/.vimfiler'
else
  echohl WarningMsg
  echomsg 'Could not use RAM disk for vimfiler, ' . s:ramdisk . ' is not mounted'
  echohl None
endif

" Key mappings

nnoremap <silent> [unite]v :<C-u>VimFilerBufferDir -quit<CR>
nnoremap <silent> [unite]p :<C-u>VimFilerBufferDir -split -simple -winwidth=30 -no-quit<CR>

" Settings in vimfiler buffer

augroup vimrc
  autocmd FileType vimfiler call s:vimfiler_settings()
augroup END

function! s:vimfiler_settings()
  nmap <buffer> <Esc> <Plug>(vimfiler_exit)
  nmap <buffer> q <Plug>(vimfiler_hide)
endfunction
