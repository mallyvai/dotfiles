" vim -u test/vimrc
set nocompatible
	
set nowrap

let root = '~/.vim/bundle'
let src = 'http://github.com/gmarik/vundle.git' 

" let src = '~/.vim/bundle/vundle/.git' 

" Vundle Options
" let g:vundle_default_git_proto = 'git'

if !isdirectory(expand(root, 1).'/vundle')
  exec '!git clone '.src.' '.shellescape(root, 1).'/vundle'
endif

filetype on
filetype off
syntax on

runtime macros/matchit.vim

exec 'set rtp+='.root.'/vundle'

call vundle#rc(root)

Bundle "gmarik/vundle"

" vim-scripts name
Bundle 'molokai'

" github username with dashes
Bundle 'vim-scripts/ragtag.vim'

" original repo
Bundle 'altercation/vim-colors-solarized'
" with extension
Bundle 'nelstrom/vim-mac-classic-theme.git'
"

" short uri
Bundle 'gh:gmarik/snipmate.vim.git'

Bundle 'L9'
Bundle 'FuzzyFinder'
" with options
Bundle 'rstacruz/sparkup.git', {'rtp': 'vim/'}

" Camel case
Bundle 'vim-scripts/RubySinatra'

" syntax issue #203
Bundle 'jimenezrick/vimerl'

filetype plugin indent on      " Automatically detect file types.

set wildignore+=doc              " should not break helptags
set wildignore+=.git             " should not break clone
set wildignore+=.git/*             " should not break clone
set wildignore+=*/.git/*
" TODO: helptags fails with this
" set wildignore+=doc/*             " should not break clone
" set wildignore+=*/doc/*

" '''''''''''''''''''''
"
" Don't blink
set novisualbell

" Show line numbers
set number

" As much as possible, show last line in display
set display=lastline

" Unicode support
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1,default

" Mouse can be used everywhere
set mouse=a

" Tab == 4 spaces.
set expandtab
set tabstop=2 
set shiftwidth=2
set softtabstop=2


" Do not redraw while running macros (much faster).
set lazyredraw 

" If on Vim will wrap long lines at a character in 'breakat' rather than at the last character that fits on the screen.
set linebreak

" Do not highlight the string we searched.
set nohlsearch 

" Highlight the searched string, while typing.
set incsearch

" Show matching brackets.
set showmatch 

" Turn off backup files
set nobackup
" '''''''''''''''''''''''''
" SHORTCUTS AND ALIASES
" '''''''''''''''''''''''''
nmap <C-i> :FufCoverageFile  <CR>
