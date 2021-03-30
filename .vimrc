filetype plugin on
set nu
set rnu
syntax enable
set mouse=r
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set hlsearch
set laststatus=1
set autoindent
set omnifunc=syntaxcomplete#Complete
set bs=eol,indent,start
set hidden
set cmdheight=2
set termguicolors
set lines=55 columns=220
set bg=dark
set wildmenu
set guifont=Lucida_Sans_Typewriter:h10:W500:cANSI:qDRAFT
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions=i
set undofile
set undodir=C:\Users\migue\.vim\undodir

map <C-n> :NERDTreeToggle<CR>

let g:neotrix_dark_contrast = "retro_hard"
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
let g:airline_theme="dalton"
let g:airline_section_c="%n %F%m%r ascii:%b%{kite#statusline()} %{expand(\"%:p:h\")}"

" Dark mode settings
highlight LineNr guifg=DarkGray
highlight Search guibg='Purple' guifg=#FFFFFF
highlight String guifg=#FF5733
highlight Visual guibg=#000000
highlight Pmenu guifg=#000000 guibg=#808080



" Para pantalla completa
function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction

map <F12> <Esc>:call ToggleGUICruft()<cr>

autocmd GUIEnter * silent! WToggleClean
set guitablabel=\[%N\]\ %t\ %M

" Quitar beep
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

let g:vimdows_screen_memento=0
let g:kite_auto_complete=1


" Para fzf
set rtp+=C:\Users\migue\AppData\Local\Programs\fzf-0.25.1-windows_amd64
" let g:fzf_layout = { 'left': '~30%'}

" nmap <F2> :call fzf#run(fzf#wrap({'source': 'dir /B'}))<Enter>
nmap <F2> :FZF<cr>
nmap <F3> :ls<cr>v
