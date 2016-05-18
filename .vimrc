syntax on
syntax enable
set nu
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set autoindent
set cursorline
set history=100
set expandtab
set hlsearch
set nocompatible " be iMproved
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set runtimepath^=~/.vim/bundle/ctrlp.vim
set ft=crystal
au BufRead,BufNewFile *.{cr,ecr} set filetype=crystal

filetype off  
filetype indent on
filetype plugin on
"some nerdtree configuration
autocmd FileType ruby compiler ruby
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeWinSize = 20 

"Auto check if vundle is installed. if not install it first
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
"markdown highlighter
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"disable folding
let g:vim_markdown_folding_disabled = 1

" vim-scripts repos
 
filetype plugin indent on " required!

"ruby support for vim
Bundle 'vim-ruby/vim-ruby'
Bundle "nelstrom/vim-textobj-rubyblock"
Bundle "kana/vim-textobj-user"
set nocompatible
if has("autocmd")
    filetype indent plugin on
endif
"nerd tree
Bundle 'scrooloose/nerdtree'
Bundle "rhysd/vim-crystal"
Bundle "StanAngeloff/php.vim"
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
"support for coffeescript
Plugin 'kchmck/vim-coffee-script'
set ft=coffee

