" Set environment
set nocompatible
scriptencoding utf-8
set termencoding=utf-8
set encoding=utf-8
set shell=/bin/zsh

" Setup Directories
silent execute '!mkdir -p $HOME/.vim/tmp/{backup,info,swap,view,undo}'
set backupdir=$HOME/.vim/tmp/backup/
set directory=$HOME/.vim/tmp/swap/
set viewdir=$HOME/.vim/tmp/view/
set undodir=$HOME/.vim/tmp/undo/
set viminfo='50,n$HOME/.vim/tmp/info/
set backup
set undofile

" Configure vim
filetype plugin indent on

" Editor settings
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set fileencodings=utf-8
set visualbell
set title
syntax on
set relativenumber
set modeline
set showmode
set showcmd
set showmatch
set incsearch
set hlsearch
set wildmenu
set list
set listchars=tab:▸\ ,eol:¬,extends:»,precedes:«
set showbreak=↪
set ttyfast
set ruler
set textwidth=79
set wrapmargin=80
set formatoptions=tcq1
set colorcolumn=80
set splitright splitbelow
set viewoptions=folds,options,cursor,unix,slash

" GUI settings
if has('gui_running')
    set guioptions-=T
    set guioptions+=LlRrb guioptions-=LlRrb
endif

" Maps
let mapleader=','
let maplocalleader='\\'
