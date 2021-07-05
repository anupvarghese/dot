" vim-airline
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1

if !exists('g:airline_symbols')
 let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep          = '▶'
let g:airline_right_sep         = '◀'
let g:airline#extensions#readonly#symbol   = '⊘'
let g:airline_symbols.branch    = '⎇'

" Always show tabs
" set showtabline=2

