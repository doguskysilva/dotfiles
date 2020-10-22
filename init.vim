
""" START Plugins Configurations

call plug#begin()

" Theme and interface
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Files Navigation
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

""" END Plugins Configurations

"""""""""""""""""""""""""""""""""
" CONFIGURATION SECTION
"""""""""""""""""""""""""""""""""

syntax on
syntax enable
set encoding=UTF-8

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

" Enable highlight of current line
set cursorline

" Theme And Interface
if (has("termiguicolors"))
   set termiguicolors
endif
colorscheme dracula
set guifont=Fira\ Code\ 12

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" NerdTree Settings
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
map <C-n> :NERDTreeToggle<CR>

" fzf Settings
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
