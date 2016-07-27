set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
" Plugin 'linuxsty.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'ctrlpvim/ctrlp'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'rhysd/vim-clang-format'
Plugin 'klen/python-mode'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Lokaltog/vim-easymotion'
" Plugin 'scrooloose/syntastic'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'Rykka/riv.vim'
Plugin 'Rykka/InstantRst'

Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme molokai "solarized
highlight Normal ctermbg=none
highlight LineNr ctermbg=none

set autoindent
" filetype indent on
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
match ErrorMsg '\%>80v.\+'
" let &colorcolumn=join(range(81,999),",")
set mouse=a
"set cc=80
"setlocal spell spelllang=en_gb
set clipboard=unnamed

"set tabstop=4
"set shiftwidth=4
"set expandtab

"au BufReadPost *.py set syntax=python
au BufReadPost *.rst set nofoldenable

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
"autocmd VimEnter * nested :call tagbar#autoopen(1)

"Fixes for Python Mode
let g:pymode_rope_completion = 0
let g:pymode_options_max_line_length = 99
let g:pymode_options_colorcolumn = 0
set nofoldenable
"set completeopt=menu

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

