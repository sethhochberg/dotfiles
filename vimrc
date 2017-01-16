" load pathogen
execute pathogen#infect()
execute pathogen#helptags()

" misc useful defaults
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set textwidth=80
set colorcolumn=+1 

" show nerdtree by default for a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" autocompleteion
let g:neocomplete#enable_at_startup = 1

" filetype-specific overrides
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2						 
let ruby_space_errors = 1                                                       
let ruby_spellcheck_strings = 1 

let g:go_highlight_functions = 1                                                 
let g:go_highlight_methods = 1                                                   
let g:go_highlight_fields = 1                                                    
let g:go_highlight_types = 1                                                     
let g:go_highlight_operators = 1                                                 
let g:go_highlight_build_constraints = 1                                         

" keyboard mappings
map <C-n> :NERDTreeToggle<CR>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


