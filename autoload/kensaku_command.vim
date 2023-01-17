function! kensaku_command#search(value) abort
  if empty(a:value)
    call s:incsearch()
  else
    call s:search(kensaku#query(a:value))
  endif
endfunction

function! s:search(value) abort
  if a:value ==# ''
    return
  endif
  let @/ = '\v' .. a:value
  let v:errmsg = ''
  silent! normal! n
  if v:errmsg !=# ''
    echohl ErrorMsg
    echo v:errmsg
    echohl None
  endif
endfunction

function! s:incsearch() abort
  let l:ns = {
        \ 'curpos': getcurpos(),
        \ 'previous': '',
        \}
  let l:timer = timer_start(
        \ g:kensaku_command#incsearch_interval,
        \ { -> s:incsearch_update(l:ns) },
        \ {'repeat': -1},
        \)
  try
    redraw | call input(g:kensaku_command#incsearch_prompt)
  finally
    call timer_stop(l:timer)
  endtry
endfunction

function! s:incsearch_update(ns) abort
  let l:cmdline = getcmdline()
  if l:cmdline ==# a:ns.previous
    return
  endif
  let a:ns.previous = l:cmdline
  call setpos('.', a:ns.curpos)
  silent! call s:search(kensaku#query(l:cmdline))
  redraw
endfunction

function! s:define(name, default) abort
  let g:{a:name} = get(g:, a:name, a:default)
endfunction

call s:define(
      \ 'kensaku_command#incsearch_interval',
      \ 100,
      \)
call s:define(
      \ 'kensaku_command#incsearch_prompt',
      \ '/',
      \)
