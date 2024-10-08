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
  Plug 'dracula/vim', { 'as': 'dracula' }

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'sodapopcan/vim-twiggy'
  Plug 'airblade/vim-gitgutter'
  Plug 'rhysd/conflict-marker.vim' 
  
  " Browse files
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'scrooloose/nerdtree'
  
  Plug 'universal-ctags/ctags'
  Plug 'majutsushi/tagbar'

  " Search and replace
  Plug 'dkprice/vim-easygrep'

  " Status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Code format
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-pyright',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-go',
  \ 'coc-java',
  \ 'coc-phpls',
  \ 'coc-angular', 
  \ ]

  " Javascript & Typescript syntax
  Plug 'yuezk/vim-js'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript' 

  " Python syntax
  Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }

  " Go syntax and tools
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  
  " Kotlin
  Plug 'udalov/kotlin-vim'

  " CSS
  Plug 'ap/vim-css-color'

  " Other syntax
  Plug 'cespare/vim-toml'
  Plug 'jparise/vim-graphql'
  Plug 'gisphm/vim-gitignore'
  Plug 'hashivim/vim-terraform'

  " End syntax
  
  Plug 'jiangmiao/auto-pairs'

call plug#end()

" Key mappings
let mapleader = " "

" Theme
colorscheme dracula

" Status bar & buffer access
let g:airline_theme="deus"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

nnoremap <Leader>bl :ls<CR>
nmap <Leader>ct :checktime<CR> " Reload all buffers
nmap <Leader>bp :bp<CR> " Go to previous buffer
nmap <Leader>bn :bn<CR> " Go to next buffer
nmap <Leader>bg :e#<CR> " Go to previous buffer in use
nmap <Leader>br :bd<CR> " Close current buffer
nmap <Leader>ba :bufdo bd<CR> " Close all buffers
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
nmap <Leader>gb :Twiggy<CR> " Branch management tool
nmap <Leader>gd :vertical Gdiff<CR>
nmap <Leader>gs :vertical Gstatus<CR>
nmap <Leader>gp :Git push<CR>
let g:fugitive_layout = { "window": "aboveleft 50vsplit" }

" File browser
let NERDTreeWinSize=40
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let g:ctrlp_show_hidden=1
let g:ctrlp_custom_ignore= {
  \ 'dir' : '\v.(node_modules|env|public|build|tmp|Pods|.gradle|.git$)',
  \ 'file' : '\v.(.DS_Store|.pyc)'
  \ }
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>nc :NERDTreeClose<CR>
nmap <Leader>cp :CtrlP<CR>
nmap <Leader>tb :TagbarToggle<CR>

" Code format
nmap <Leader>ft :CocCommand prettier.formatFile<CR>

" Startup
function! StartUp()
  if 0 == argc()
    NERDTree
  endif
endfunction

autocmd VimEnter * call StartUp()
