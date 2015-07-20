:set pastetoggle=<F3>
""""""""""""""""""""""""""""""
" => Set line numbers on
"""""""""""""""""""""""""""""""
:set nu
:set relativenumber
""""""""""""""""""""""""""""""
" => Set to New Zealand spelling
"""""""""""""""""""""""""""""""
:set spelllang=en_nz

""""""""""""""""""""""""""""""
" => Gams section
"""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.gms setf gams

""""""""""""""""""""""""""""""
" => enable markdown folding
""""""""""""""""""""""""""""""
set nocompatible
if has("autocmd")
  filetype plugin indent on
endif

function! Writing()
  " my writing style
  set nonumber  " Turn off line numbers
  " Remove right sidebars
  set guioptions-=r
  " Remove left sidebars
  set guioptions-=L
  " Set the cursor to not blink!
  set guicursor=a:blinkon0
  " Break soft-wrapped lines at word boundaries
  set linebreak  
  " move about as if soft-wrapped lines were actual lines
  nnoremap j gj
  nnoremap k gk
  nnoremap 0 g0
  nnoremap $ g$
  " Configure Vim to move to the previous/next line with h and l
  " The first few were defaults, but I want h and l to work between lines as well.
  set whichwrap=b,s,<,>,[,],h,l

  " number of screen lines to show around the cursor
  set scrolloff=2
  setlocal spell 

endfunction
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
:let g:pymode_rope = 0
:let g:pymode_rope_autoimport = 0
let NERDSpaceDelims=1


