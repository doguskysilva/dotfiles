
""" START Plugins Configurations

call plug#begin()

" Theme and interface
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

""" END Plugins Configurations

"""""""""""""""""""""""""""""""""
" CONFIGURATION SECTION
"""""""""""""""""""""""""""""""""

syntax enable

" Set Linenumbers
set number
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Display line status
set laststatus=2

let g:elite_mode=1

" Enable highlight of current line
set cursorline

" Theme
if (has("termiguicolors"))
   set termiguicolors
endif
colorscheme dracula

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
