" <TAB>: completion.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#manual_complete()
" <S-TAB>: back completion.
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" select use <CR>
" inoremap <silent><expr> <CR>
"       \ pumvisible() ? "\<C-j><BS>" :
"       \ deoplete#manual_complete()
inoremap <silent><expr> <C-TAB> pumvisible() ? "\<C-j><BS>" : "<CR>"

function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~? '\s'
endfunction"}}}

" <C-p>: completion back.
inoremap <expr><C-p>  pumvisible() ? "\<C-p>" : "\<C-h>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"

inoremap <expr><C-g> deoplete#undo_completion()
" <C-l>: redraw candidates
inoremap <expr><C-l>       deoplete#refresh()

" <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function() abort
"   return deoplete#cancel_popup() . "\<CR>"
" endfunction

inoremap <expr> '  pumvisible() ? deoplete#close_popup() : "'"

let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns._ = '[a-zA-Z_]\k*\(?'
let g:deoplete#keyword_patterns.tex = '[^\w|\s][a-zA-Z_]\w*'
let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.python = ''
let g:deoplete#omni#functions = {}
let g:deoplete#auto_complete_delay = 10

let g:deoplete#enable_refresh_always = 0
let g:deoplete#enable_camel_case = 1

let g:deoplete#skip_chars = ['(', ')']
