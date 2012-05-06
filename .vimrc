" Basic options
set nocompatible
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " Expand tabs
set encoding=utf8
set guifont=Monaco:h12
set vb " Visual bell

" Load Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'othree/html5.vim'
Bundle 'Glench/Vim-Jinja2-Syntax'

syntax on
filetype plugin indent on

set hlsearch " Highlight search
set incsearch " Incremental search
set gdefault " /g flag for substitution
set smartcase " Smart case-insensitive search
set autoindent " Indentation
set number " Line numbers
set title " Title = file in terminal
set autochdir " cd to file dir
set smarttab " Soft tabs only in the beginning of the line
set nobackup
set nowb
set noswapfile
set clipboard=unnamed

" Shortcuts
noremap ; :
noremap : ;
" next tab:
nnoremap <silent> tn :<C-u>tabnext<CR> 
" previous tab:
nnoremap <silent> tp :<C-u>tabprev<CR> 
" disable highlighting
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" write & make
nnoremap <silent> mm :<C-u>write<CR>:<C-u>make<CR> 
" sudo write !
cmap w!! w !sudo tee % >/dev/null 

let mapleader = ","
let g:mapleader = ","

" File completion
set wildmenu
set wildignore=*.o,*.a,*.pyc,*.jpg,*.jpeg,*.png,*.gif,*.pdf,*.class,*.swp,*.gz,*.DS_Store,*.jar

set t_Co=256
colorscheme solarized
set background=light

" Macvim
if has('gui_running')
    set go-=T " Disable toolbar    
endif

" Templates
:autocmd BufNewFile *.py  0r ~/.vim/templates/python.py
:autocmd BufNewFile *.sh  0r ~/.vim/templates/bash.sh
:autocmd BufNewFile *.tex 0r ~/.vim/templates/latex.tex
:autocmd BufNewFile *.html 0r ~/.vim/templates/html.html
