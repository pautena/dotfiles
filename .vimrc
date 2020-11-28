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

  " Deoplete & TabNine
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  let g:deoplete#enable_at_startup = 1

  if has('win32') || has('win64')
    Plug 'tbodt/deoplete-tabnine', { 'do': 'powershell.exe .\install.ps1' }
  else
    Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
  endif
  
  " Status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Code format
  Plug 'ianks/vim-tsx'
  Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

call plug#end()

" Theme
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

let g:airline_theme="deus"
let g:airline_powerline_fonts=1

" File browser
let NERDTreeShowHidden=1
let g:ctrlp_show_hidden=1

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


" Startup
function! StartUp()
  NERDTree
endfunction

autocmd VimEnter * call StartUp()
