function! Cond(cond, ...)
    let opts = get(a:000, 0, {})
    return a:cond ? opts : extend(opts, { 'on' : [], 'for': [] })
endfunction

call plug#begin()

" All of these extensions only work in regular Neovim mode,
" so do not run the plugins on vscode
if !exists('g:vscode')
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
    Plug 'neoclide/coc.nvim', {'branch' : 'release'}
endif

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

if !exists('g:vscode')
    :colorscheme nord
endif

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
