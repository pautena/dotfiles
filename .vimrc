set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber

set laststatus=2
set noshowmode

call plug#begin('~/.vim/plugged')
  " Themes
  Plug 'morhetz/gruvbox'

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  
  " Browse files
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'scrooloose/nerdtree'


  
  " React
  Plug 'ianks/vim-tsx'

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" Key mappings
let mapleader = " "

" Plugins management
nmap <Leader>pi :PlugInstall<CR>
nmap <Leader>pu :PlugUpdate<CR>

" Git
nmap <Leader>gs :Git<CR>
nmap <Leader>gc :GitCheckout<CR>
nmap <Leader>gd :Git diff<CR>
nmap <Leader>gp :GitGutterPreviewHunk<CR>

" File browser
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>cp :CtrlP<CR>
