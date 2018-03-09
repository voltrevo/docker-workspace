" Indentation
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

" Don't worry about vi compatibility
set nocompatible

" Try to keep 5 lines of context when scrolling
set scrolloff=5
set sidescrolloff=2

" Create backups
set backup
set backupdir=~/.vim-backups
let backupvar = "set backupext=~" . strftime("%Y-%m-%d-%H:%m:%S")
execute backupvar

" Search options: incremental search, highlight search
set hlsearch
set incsearch

" Allow edit buffers to be hidden
set hidden

" CursorLine is nice, you'll like it
set cursorline

" Line numbers
set number

" Smart case is cool. If all lowercase, do case insensitve search, using
" anything uppercase makes it case sensitive.
set ignorecase
set smartcase

" Plugins with vim-plug
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim'
Plug 'schickling/vim-bufonly'
Plug 'w0rp/ale'
call plug#end()

silent! colorscheme dracula