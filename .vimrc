set nocompatible
set encoding=utf-8
set nu
set mouse=a
filetype plugin indent on
syntax enable

set noswapfile

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

let g:netrw_liststyle=3         " tree
let g:netrw_banner=0            " no banner
