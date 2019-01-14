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
set backup
set undofile

" Configure vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'majutsushi/tagbar'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplcache'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'jcf/vim-latex'
Plugin 'godlygeek/tabular'
Plugin 'rodjek/vim-puppet'
Plugin 'markcornick/vim-vagrant'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'rizzatti/dash.vim'

call vundle#end()
filetype plugin indent on


" Configure leader mapping
let mapleader=','
let maplocalleader='\\'

" Mapping for CtrlP
let g:ctrlp_map='<C-p>'
let g:ctrlp_cmd='CtrlP'

" Set path for powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" Mapping for tagbar
map <C-t> :TagbarToggle<CR>

" Mapping for numbers
map <C-m> :NumbersToggle<CR>

" Mapping for NERDTree
map <C-n> :NERDTreeToggle<CR>

" Mapping for dash.vim
nmap <silent> <leader>d <Plug>DashSearch

" Syntastic symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

" Activate neocomplcache
let g:neocomplcache_enable_at_startup=1

" VIM Latex settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_TreatMacViewerAsUNIX = 1
let g:Tex_ExecuteUNIXViewerInForeground = 1
let g:Tex_ViewRule_ps = 'open-a Preview'
let g:Tex_ViewRule_pdf = 'open -a Preview'
let Tex_FoldedSections = ""
let Tex_FoldedEnvironments = ""
let Tex_FoldedMisc = ""

" Editor settings
set backspace=indent,eol,start
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set fileencodings=utf-8
set visualbell
set title
set laststatus=2
syntax enable
colorscheme PaperColor
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
