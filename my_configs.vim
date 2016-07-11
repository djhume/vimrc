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
""""""""""""""""""""""""""""""
" => enable quick kj to escape insert mode
""""""""""""""""""""""""""""""
inoremap kj <ESC>

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

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

:let g:pymode_rope = 0
:let g:pymode_rope_autoimport = 0
let NERDSpaceDelims=1

" You can get the information about the windows with first argument as a dictionary.
"
"   KEY              VALUE                      AVAILABILITY
"-----------------------------------------------------------------------------------
"   vcs            : vcs type (e.g. 'git')   -> all hooks
"   edit_winnr     : winnr of edit window    -> ditto
"   edit_bufnr     : bufnr of edit window    -> ditto
"   diff_winnr     : winnr of diff window    -> ditto
"   diff_bufnr     : bufnr of diff window    -> ditto
"   status_winnr   : winnr of status window  -> all hooks except for 'diff_open' hook
"   status_bufnr   : bufnr of status window  -> ditto

let g:committia_hooks = {}
function! g:committia_hooks.edit_open(info)
    " Additional settings
    setlocal spell

    " If no commit message, start with insert mode
    if a:info.vcs ==# 'git' && getline(1) ==# ''
        startinsert
    end

    " Scroll the diff window from insert mode
    " Map <C-n> and <C-p>
    imap <buffer><C-n> <Plug>(committia-scroll-diff-down-half)
    imap <buffer><C-p> <Plug>(committia-scroll-diff-up-half)

endfunction
