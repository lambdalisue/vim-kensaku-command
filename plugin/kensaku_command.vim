if exists('g:loaded_kensaku_command')
  finish
endif
let g:loaded_kensaku_command = 1

command! -nargs=* Kensaku call kensaku_command#search(<q-args>)
