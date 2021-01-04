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
  
  Plug 'universal-ctags/ctags'
  Plug 'majutsushi/tagbar'
  
  " Status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Code format

  let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-pyright',
  \ 'coc-tsserver'
  \ ]
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'yuezk/vim-js'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }


  Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " Python syntax

  Plug 'cespare/vim-toml'

  Plug 'jparise/vim-graphql'

call plug#end()

" Key mappings
let mapleader = " "

" Theme
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" Status bar & buffer access
let g:airline_theme="deus"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

nnoremap <Leader>bl :ls<CR>
nmap <Leader>bp :bp<CR>
nmap <Leader>bn :bn<CR>
nmap <Leader>bg :e#<CR>
nmap <Leader>1 :1b<CR>
nmap <Leader>2 :2b<CR>
nmap <Leader>3 :3b<CR>
nmap <Leader>4 :4b<CR>
nmap <Leader>5 :5b<CR>
nmap <Leader>6 :6b<CR>
nmap <Leader>7 :7b<CR>
nmap <Leader>8 :8b<CR>
nmap <Leader>9 :9b<CR>
nmap <Leader>0 :10b<CR>


" Plugins management
nmap <Leader>pi :PlugInstall<CR>
nmap <Leader>pu :PlugUpdate<CR>

" Git
nmap <Leader>gs :Git<CR>
nmap <Leader>gc :GitCheckout<CR>
nmap <Leader>gd :Git diff<CR>
nmap <Leader>gp :GitGutterPreviewHunk<CR>

" File browser
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let g:ctrlp_show_hidden=1
let g:ctrlp_custom_ignore= {
  \ 'dir' : '\v.(node_modules|env|public|build|tmp|.git|Pods|.gradle)',
  \ 'file' : '\v.(.DS_Store|.pyc)'
  \ }
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>nc :NERDTreeClose<CR>
nmap <Leader>cp :CtrlP<CR>
nmap <Leader>tb :TagbarToggle<CR>




" Startup
function! StartUp()
  if 0 == argc()
    NERDTree
  endif
endfunction

autocmd VimEnter * call StartUp()
