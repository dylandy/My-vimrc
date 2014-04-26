syntax on
set nu
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set autoindent
set cursorline
set history=100
set expandtab
set nocompatible " be iMproved
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

"Auto check if vundle is installed. if not istall it first
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

filetype off " required!
"let g:Powerline_symbols = 'fancy'

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/powerline-fonts' 
" My Bundles here:
Bundle 'othree/html5.vim'
Bundle 'scrooloose/syntastic'
"less highlighter
au BufRead,BufNewFile *.less setfiletype css

"Support for go
Bundle 'golangtw/go.vim'
Bundle 'golangtw/gocode.vim'
" vim-scripts repos
 
filetype plugin indent on " required!
 
