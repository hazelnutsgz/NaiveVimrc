"""" Basic Behavior

set number              " show line numbers
set wrap                " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
set mouse=a             " enable mouse support (might not work well on Mac OS X)
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
set laststatus=2        " always show statusline (even with only single window)
set ruler               " show line and column number of the cursor on right side of statusline
set visualbell          " blink cursor on error, instead of beeping
set backspace=indent,eol,start " backspace over everything in insert mode
set background=dark
set t_Co=256

set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
" put colorscheme files in ~/.vim/colors/
"
colorscheme molokai      " good colorschemes: murphy, slate, molokai, badwolf, solarized

" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
filetype plugin indent on

"""Autoload
if has ('autocmd') " Remain compatible with earlier versions
  augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
 augroup END
endif " has autocmd

"""" Search settings

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" YCM

" turn off search highlighting with <CR> (carriage-return)

""" Mapping
:let mapleader = " "
nnoremap f :Ack!<Space>
nnoremap p :CtrlP<CR> 

autocmd FileType c nnoremap j :tab YcmCompleter GoTo<CR>

nnoremap <leader><Left> :tabprevious<CR>
nnoremap <leader><Right> :tabnext<CR>

"""ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }
"" LET
""let g:ycm_use_clangd = 0
let g:go_auto_type_info = 1

"" MISC



" ----------------------------- Vundle Start -----------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on
" ----------------------------- Vundle End   -----------------------------
