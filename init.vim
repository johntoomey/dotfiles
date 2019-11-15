set nocompatible " be iMproved, required

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
"Plug 'rhysd/vim-clang-format'
Plug 'fatih/vim-go'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
"Plug 'davidhalter/jedi-vim'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'majutsushi/tagbar'
"Plug 'tpope/vim-bundler'
"Plug 'tpope/vim-rails'
"Plug 'tpope/vim-endwise'
"Plug 'mattn/emmet-vim'
"Plug 'vim-syntastic/syntastic'
"Plug 'maksimr/vim-jsbeautify'
Plug 'ryanoasis/vim-devicons'
Plug 'universal-ctags/ctags'
"Plug 'docker/docker'
Plug 'joshdick/onedark.vim'
"Plug 'w0rp/ale'
"Plug 'machakann/vim-sandwich'
"Plug 'romainl/vim-cool'
"Plug 'sheerun/vim-polyglot'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'mboughaba/i3config.vim'
Plug 'kergoth/vim-bitbake'
call plug#end()

filetype plugin indent on
set background=dark
"colorscheme molokai
colorscheme onedark

set encoding=utf8
set fileencoding=utf8
set fileencodings=utf8
set bomb
set binary

set wildmode=longest,list,full
set splitbelow splitright

set backspace=indent,eol,start

let mapleader=','

set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

set hlsearch
set incsearch
set ignorecase
set showmatch
set smartcase
set autoindent
set wildmenu
set cursorline
set showcmd
set laststatus=2
set updatetime=500
set mouse=a
set clipboard=unnamedplus
set fileformats=unix,dos,mac
"setlocal spell spelllang=en_gb

syntax on
set ruler
set number relativenumber

highlight Normal ctermbg=none
highlight LineNr ctermbg=none

" vim-go-compiler
let g:golang_goroot = "/home/john/go"

" vim-airline
"let g:airline_theme='badwolf'
"let g:airline_theme = 'powerlineish'
"let g:airline_theme = 'gruvbox'
let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#whitespace#checks = [ 'trailing' ]
let g:airline#extensions#virtualenv#enabled = 1
let g:airline_powerline_fonts = 1

" Custom commands
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"noremap <C-u> :bp<CR>
"noremap <C-i> :bn<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

let g:go_version_warning = 0
