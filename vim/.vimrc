set nocompatible

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'prettier/vim-prettier', {
      \ 'do': 'npm install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
    Plug 'easymotion/vim-easymotion'
    Plug 'tpope/vim-vinegar'
call plug#end()

syntax on

filetype plugin indent on

let mapleader = ","

" Security
set modelines=0

" Show hybrid line numbers
set number relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Window management

" Tab through windows with Ctrl-{hjkl}
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" More natural direction of opening new splits
set splitbelow
set splitright

" Key rebindings

" jj to exit insert mode (faster than Esc)
inoremap jj <Esc>

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬

" Theming

" Mark active window
highlight StatusLineNC cterm=bold ctermfg=white ctermbg=darkgray

