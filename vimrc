set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'rhysd/vim-clang-format'
Plugin 'klen/python-mode'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomasr/molokai'
"Plugin 'lifepillar/vim-mucomplete'
"Plugin 'craigemery/vim-autotag'
Plugin 'craigemery/vim-autotag'


Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme molokai
highlight Normal ctermbg=none
highlight LineNr ctermbg=none

set autoindent
set wildmenu
set hlsearch
set showmatch
set incsearch
set ignorecase
set ruler
set number
set laststatus=2
set backspace=2
set updatetime=500
set cursorline
set showcmd
" match ErrorMsg '\%>80v.\+' "cc=80
set mouse=a
set clipboard=unnamed
"setlocal spell spelllang=en_gb
set tabstop=4

"Fix for NERDTree
let NERDTreeDirArrows=0
map <C-\> :NERDTreeToggle<CR>
"hi Directory guifg=#FF0000 ctermfg=green

"Fix for vim-airline
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#whitespace#enabled = 0
" let g:airline#extensions#whitespace#mixed_indent_algo = 2
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#whitespace#checks = [ 'trailing' ]

"Fix for NERDcommenter
let NERDSpaceDelims=1

"tagbar
let g:tagbar_width = 30

"Fixes for Python Mode
let g:pymode_rope_completion = 0
let g:pymode_options_max_line_length = 99
let g:pymode_options_colorcolumn = 0
set nofoldenable

"show tabs and eol
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"disable the arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"control buffer with CTRL+J/K
map <C-J> :bprev<CR>
map <C-K> :bnext<CR>

map <F2> :ClangFormat<CR>

"git
autocmd filetype gitcommit setlocal spell textwidth=72

"Folding
set foldmethod=syntax
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>

