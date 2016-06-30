set nocompatible              " required
filetype off                  " required
set encoding=utf-8
set nu
set clipboard=unnamed
set mouse=a
let python_highlight_all=1
syntax on

" Enable folding
set foldmethod=indent
set foldlevel=99

au BufNewFile,BufRead *.py:
    \ setlocal tabstop=4
    \ setlocal softtabstop=4
    \ setlocal shiftwidth=4
    \ setlocal textwidth=79
    \ setlocal expandtab
    \ setlocal autoindent
    \ setlocal fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css:
    \ setlocal tabstop=2
    \ setlocal softtabstop=2
    \ setlocal shiftwidth=2

:highlight ExtraWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match ExtraWhitespace /\s\+$/

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Plugins config
let g:SimpylFold_docstring_preview=1
let g:ycm_autoclose_preview_window_after_completion=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

" --------- Hotkeys ---------------

autocmd FileType python map <buffer> <F7> :call Flake8()<CR>

map <C-n> :NERDTreeToggle<CR>

call togglebg#map("<F5>")

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding with the spacebar
nnoremap <space> za
