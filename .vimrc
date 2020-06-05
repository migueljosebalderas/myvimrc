set nu
set rnu
syntax enable
" set mouse=a
set numberwidth=1
" set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set hlsearch
set laststatus=1

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Theme
Plug 'zeis/vim-kolor'
Plug 'morhetz/gruvbox'

" IDE para python
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'easymotion/vim-easymotion'


" Initialize plugin system
call plug#end()

" Kolor Configuration
let g:kolor_italic=1
let g:kolor_bold=1
let g:kolor_underlined=0
let g:kolor_alternative_matchparen=0
let g:kolor_inverted_matchparen=0
" set bg=dark
colorscheme kolor
" colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let mapleader = " "

" easymotion
nmap <leader>f <Plug>(easymotion-s2)

" for hide and show nerdtree
" nmap <F6> :NERDTreeToggle<CR>
" nmap <leader>n :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>
