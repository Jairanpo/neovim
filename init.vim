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

" Themes
Plug 'morhetz/gruvbox'

" IDE
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'zchee/deoplete-jedi'
call plug#end()


colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:airline_theme='deus'
let NERDTreeQuitOnOpen=1


let mapleader=" "
nmap<Leader>s <Plug>(easymotion-s2)
nmap<Leader>nt :NERDTreeFind<CR>
nmap<Leader>w :w<CR>
nmap<Leader>q :q<CR>
nmap<Leader>q! :q!<CR>

