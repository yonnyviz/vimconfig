" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" alternatively, pass a path where Vundle should install plugins call
" call vuldle#begin('~/some/path/here')
call vundle#begin()

" let Vundle manage itself. 
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/nerdtree'
Plugin 'nvie/vim-flake8'
Plugin 'tell-k/vim-autopep8'



" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" 
" Theme Configuration
"
syntax enable
set background=dark
" colorscheme solarized

set ruler
set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
let g:pymode_python = 'python3'


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

map <C-n> :NERDTreeToggle<CR>:21

