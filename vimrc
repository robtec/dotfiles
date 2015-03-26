set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Blackrush/vim-gocode'
Bundle 'scrooloose/nerdtree'
Bundle 'rosstimson/bats.vim'
call vundle#end() 

syntax enable
set background=dark
colorscheme solarized

set tabstop=4		" interpret tabs as 4 spaces
set softtabstop=4	" use 4 spaces per tab
set expandtab		" convert tabs to spaces
set number		" show line numbers
set cursorline		" highlight current line

filetype plugin indent on      " load filetype-specific indent files

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

autocmd vimenter * if !argc() | NERDTree | endif     " enable NERDTree
