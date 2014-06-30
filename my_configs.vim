:set pastetoggle=<F3>
""""""""""""""""""""""""""""""
" => Set line numbers on
"""""""""""""""""""""""""""""""
:set nu
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
