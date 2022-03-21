call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tc50cal/vim-terminal'
Plug 'preservim/tagbar'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"Plugin Settings:

"Airline
let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts = 1

"NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

"Tagbar
nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview

"Awesome-vim-colorschemes
set background=dark
:colorscheme nord

set updatetime=100

"General Settings:

set hlsearch

set incsearch

set clipboard=unnamedplus

set tabstop=4
set softtabstop=4
set shiftwidth=4

set mouse=a

set expandtab
set autoindent
set fileformat=unix

    set nocompatible

    "syntax on

    set encoding=utf-8

    set number relativenumber

    set number

    autocmd FileType * setlocal formatoptions-=c formatoptions -=r formatoptions-=o

    nnoremap <silent> <C-t> :tabnew<CR>

    autocmd BufWritePre * %s/\s\+$//e
