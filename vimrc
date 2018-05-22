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

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'marcopaganini/termschool-vim-theme'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/obsidian2.vim'
Plugin 'airblade/vim-gitgutter'

" Ruby / Rails plugins
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'thoughtbot/vim-rspec'

" Golang
Plugin 'fatih/vim-go'

" Scala
Plugin 'derekwyatt/vim-scala'

" Elm
Plugin 'elmcast/elm-vim'

" Elixir
Plugin 'elixir-lang/vim-elixir'

" LESS
Plugin 'groenewege/vim-less'

" Rust
Plugin 'rust-lang/rust.vim'

" Python
Plugin 'python-mode/python-mode'

" OCaml
Plugin 'rgrinberg/vim-ocaml'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All Plugins must be required before the following line
call vundle#end()         " required
filetype plugin indent on " required

" Search
let g:ag_highlight=1

"=================================================================
" Configurations
"=================================================================

" Use the space key as the leader
let mapleader = "\<Space>"

" Split edit vimrc file
nmap <leader>vs :sp $MYVIMRC<CR>
" Reload vimrc file
nmap <leader>so :source $MYVIMRC<CR>
" Open NERDTree view
nmap <leader>n :NERDTreeToggle<CR>

" Treat wrapped lines as separate lines
nmap k gk
nmap j gj

" Colorscheme
colorscheme termschool

" Syntax highlighting
syntax on

" Make CtrlP use ag for listing the files. Way faster.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" Show dotfiles in NERDTree
let NERDTreeShowHidden=1

" General configurations
"-----------------------

set shell=/bin/sh     " Ensure vim always runs from a shell
set nocompatible	    " No concerned with vi compatibility
set hidden		        " Allow buffer change w/o saving
set autoread		      " Load file from disk
set lazyredraw		    " Don't update while executing macros
set history=1000	    " Remember last 1000 commands
set scrolloff=5		    " Keep at least 4 lines below cursor
set expandtab		      " Convert <tab> to spaces (2 or 4)
set number            " Line numbers
set tabstop=2		      " Two spaces per tab as default
set shiftwidth=2	    "     then override with per filetype
set softtabstop=2	    "     specific settings via autocmd	
set ruler             " Always show current position
set ignorecase        " Ignore case when searching
set cursorline        " Underline the current row
set cursorcolumn      " Hightlight the current column
set colorcolumn=80    " line at 80
set nofoldenable      " disable folding

" Set modeline to 1 to allow rcfiles to be recognized as vim files
set modelines=1

" Files, backups, and undo
"-------------------------
set nobackup " Turn backup off
set nowb
set noswapfile

" vim-rspec customizations
"-------------------------
let g:rspec_command = "!bin/rspec {spec}"

" rust.vim customizations
"------------------------
" let g:rustfmt_autosave = 1

" Leader commands
"----------------
nmap <leader>a :call RunAllSpecs()<CR>
nmap <leader>bi :!bundle install<CR>
nmap <leader>l :call RunLastSpec()<CR>
nmap <leader>s :call RunNearestSpec()<CR>
nmap <leader>t :call RunCurrentSpecFile()<CR>
nmap <leader>v :!vundle<CR>

map <leader>i mmgg=G`m<CR>
map <leader>p :set paste<CR>o<esc>"*]p:set nopaste<CR>

" Uncomment to automatically open up NERDTree if no files specified on startup
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Set indentation preferences for Ruby files
autocmd FileType ruby setlocal expandtab shiftwidth=2 softtabstop
