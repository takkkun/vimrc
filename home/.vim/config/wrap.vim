function! s:toggle_wrap()
  let logical = [ 'j',  'k',  '0',  '^',  '$']
  let visual  = ['gj', 'gk', 'g0', 'g^', 'g$']

  if &wrap
    set nowrap
    call s:map(logical, logical)
    call s:map(visual,  visual )
  else
    set wrap
    call s:map(logical, visual )
    call s:map(visual,  logical)
  endif
endfunction

function! s:map(from, to)
  let i = 0
  let length = len(a:from)

  while i < length
    exe 'nnoremap <buffer>' a:from[i] a:to[i]
    let i += 1
  endwhile
endfunction

set nowrap " by default

nnoremap <silent> <Tab> :<C-u>call <SID>toggle_wrap()<CR>
