set nocompatible
set encoding=utf-8
set nu
set mouse=a
set noswapfile
set tabstop=2
set shiftwidth=2
set noexpandtab


" ---- Vundle configuration ----
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'davidhalter/jedi-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'nightsense/snow'

call vundle#end()

filetype plugin indent on
syntax enable
" ------------------------------

" ---- Plugin specific settings ----
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_select_first = 0
" ----------------------------------

set background=dark
silent! colorscheme snow
silent! let g:airline_theme='snow_dark'

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

set clipboard=unnamedplus

" ---- Hotkeys ----
set pastetoggle=<F2>
" -----------------


" ---- FileType specific settings ----
au FileType python setlocal tabstop=4 shiftwidth=4 expandtab autoindent smarttab completeopt-=preview
" ------------------------------------
