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
let g:gruvbox_bold = "3"
let mapleader = " "

" easymotion
nmap <leader>f <Plug>(easymotion-s2)

" for hide and show nerdtree
" nmap <F6> :NERDTreeToggle<CR>
" nmap <leader>n :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" Configuration pymode
" Activacion
let g:pymode_rope = 1
" Turn on code completion support in the plugin
let g:pymode_rope_completion = 1
" let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_complete_on_dot = 1
" Extended autocompletion (rope could complete objects which have not been imported) from project
let g:pymode_rope_autoimport = 0
" Load modules to autoimport by default
let g:pymode_rope_autoimport_modules = ['os', 'shutil', 'datetime']
" If the complete item which inserted is not your wanted, you can roll it back use '<c-w>' in Insert mode or setup 'completeopt' with menuone and noinsert
set completeopt=menuone,noinsert
