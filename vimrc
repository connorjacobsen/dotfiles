"------------------------------------------------------------------
"
" Author:	Connor Jacobsen
" Source:	https://github.com/connorjacobsen/dotfiles
"
"------------------------------------------------------------------

"=================================================================
" Vundle setup
"=================================================================
set nocompatible
filetype off " required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

" All Plugins must be required before the following line
call vundle#end()         " required
filetype plugin indent on " required

"=================================================================
" Configurations
"=================================================================

" Use the space key as the leader
let mapleader = "\<Space>"

" Split edit vimrc file
nmap <leader>vr :sp $MYVIMRC<CR>
" Reload vimrc file
nmap <leader>so :source $MYVIMRC<CR>

" Treat wrapped lines as separate lines
nmap k gk
nmap j gj

" Syntax highlighting
syntax on

" Make CtrlP use ag for listing the files. Way faster.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" General configurations
"-----------------------

set nocompatible	    " No concerned with vi compatibility
set hidden		        " Allow buffer change w/o saving
set autoread		      " Load file from disk
set lazyredraw		    " Don't update while executing macros
set history=1000	    " Remember last 1000 commands
set scrolloff=5		    " Keep at least 4 lines below cursor
set expandtab		      " Convert <tab> to spaces (2 or 4)
set tabstop=2		      " Two spaces per tab as default
set shiftwidth=2	    "     then override with per filetype
set softtabstop=2	    "     specific settings via autocmd	
set number            " Show line numbers

" Set modeline to 1 to allow rcfiles to be recognized as vim files
set modelines=1

autocmd FileType ruby setlocal expandtab shiftwidth=2 softtabstop
