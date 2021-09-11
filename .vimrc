
" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

set ruler
set number
set tabstop=4 
set softtabstop=0 
set expandtab 
set shiftwidth=4 
set smarttab
set relativenumber
set hidden
set nowrap
set incsearch
set scrolloff=8
set laststatus=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" alternatively, pass a path where Vundle should install plugins call
" call vuldle#begin('~/some/path/here')
call vundle#begin()

" let Vundle manage itself. 
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'nvie/vim-flake8'
Plugin 'tell-k/vim-autopep8'
Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required


filetype plugin indent on    " required

" Theme Configuration
"
syntax enable
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost
"$TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more
"information.)
if (empty($TMUX))
    if (has("nvim"))
        "      "For Neovim 0.1.3 and 0.1.4 <
        "      https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "              "For Neovim > 0.1.5 and Vim > patch 7.4.1799 <
    "              https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
    "              >
    "                "Based on Vim patch 7.4.1770 (`guicolors` option) <
    "                https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
    "                >
    "                  " <
    "                  https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
    "                  >
    if (has("termguicolors"))
        set termguicolors
    endif
endif




autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" NERDTREE remaps
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
noremap <leader>t :!
let mapleader = " "

" Escape key remapping.
inoremap jk <ESC>


colorscheme gruvbox
