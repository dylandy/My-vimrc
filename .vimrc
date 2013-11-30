set term=xterm
syntax on
set nu
set tabstop=2
set shiftwidth=1
set autoindent
set cursorline
set history=100
set expandtab
set nocompatible " be iMproved
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

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
"github 上的 plugin
Bundle 'othree/html5.vim'
"AutoCheck syntax
Bundle 'scrooloose/syntastic'
"less highlighter
au BufRead,BufNewFile *.less setfiletype css

"Support for go
Bundle 'golangtw/go.vim'
Bundle 'golangtw/gocode.vim'
" vim-scripts repos
 
" non github repos

 
filetype plugin indent on " required!
 
" Brief help
" :BundleList - list configured bundles
" :BundleInstall(!) - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!) - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
