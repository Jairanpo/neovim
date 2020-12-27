set number
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode


call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'machakann/vim-highlightedyank'
" Themes
Plug 'pineapplegiant/spaceduck'

" IDE
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'zchee/deoplete-jedi'
Plug 'itchyny/lightline.vim'
call plug#end()

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colorscheme spaceduck
let g:airline_theme='spaceduck'
let g:lightline = {
  \ 'colorscheme': 'spaceduck',
  \ }
let NERDTreeQuitOnOpen=1


let mapleader=" "
nmap<Leader>s <Plug>(easymotion-s2)
nmap<Leader>nt :NERDTreeFind<CR>
nmap<Leader>w :w<CR>
nmap<Leader>q :q<CR>
nmap<Leader>q! :q!<CR>

