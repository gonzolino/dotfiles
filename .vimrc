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

" Configure vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'myusuf3/numbers.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'jcf/vim-latex'

filetype plugin indent on

"Mapping for CtrlP
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

" View markdown with Marked.app
:nnoremap <leader>m :silent !open -a Marked.app '%p'<cr>

" Editor settings
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
set background=dark
colorscheme solarized
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
