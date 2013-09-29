set nu
set tabstop=2
set shiftwidth=1
set autoindent
set cursorline
set history=100
set expandtab
set nocompatible " be iMproved
filetype off " required!
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
" required!
"使用vundle插件管理器管理自身
Bundle 'gmarik/vundle'
 
"vundel管理的插件，有三種
" My Bundles here:
"
"github 上的 plugin
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
 
Bundle 'othree/html5.vim'
 
"第二種為普通的script plugin
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
 
"第三種為非github上的git repository
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...
 
filetype plugin indent on " required!
 
"使用说明
" Brief help
" :BundleList - list configured bundles
" :BundleInstall(!) - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!) - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
