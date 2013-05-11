let g:unite_enable_start_insert = 0

" Data directory

if has('win32')
  let s:ramdisk = 'R:'
elseif has('macunix')
  let s:ramdisk = '/Volumes/RamDisk'
else
  let s:ramdisk = '/mnt/ramdisk'
endif

if isdirectory(s:ramdisk)
  let g:unite_data_directory = s:ramdisk . '/.unite'
else
  echohl WarningMsg
  echomsg 'Could not use RAM disk for unite.vim, ' . s:ramdisk . ' is not mounted'
  echohl None
endif

" Settings for grep action

if executable('ag')
  let g:unite_source_grep_command       = 'ag'
  let g:unite_source_grep_default_opts  = '--noheading --nocolor -a'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ack-grep')
  let g:unite_source_grep_command       = 'ack-grep'
  let g:unite_source_grep_default_opts  = '--no-heading --no-color -a'
  let g:unite_source_grep_recursive_opt = ''
endif

" Key mappings

nnoremap [unite] <Nop>
nmap <Leader>f [unite]

nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file file/new<CR>
nnoremap <silent> [unite]b :<C-u>Unite -buffer-name=buffers buffer<CR>
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [unite]m :<C-u>Unite -buffer-name=files\ (most\ recently\ used) file_mru<CR>
nnoremap <silent> [unite]c :<C-u>Unite -buffer-name=bookmarks bookmark<CR>
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>

" Settings in unite buffer

augroup vimrc
  autocmd FileType unite call s:unite_settings()
augroup END

function! s:unite_settings()
  nmap <buffer> <Esc> <Plug>(unite_exit)
  imap <buffer> <BS>  <Plug>(unite_delete_backward_path)

  nnoremap <silent><buffer><expr> s unite#smart_map('s', unite#do_action('split'))
  nnoremap <silent><buffer><expr> v unite#smart_map('v', unite#do_action('vsplit'))
  nnoremap <silent><buffer><expr> t unite#smart_map('t', unite#do_action('tabopen'))
  nnoremap <silent><buffer><expr> f unite#smart_map('f', unite#do_action('vimfiler'))
endfunction
