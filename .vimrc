set modifiable
set nocompatible
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
set wildmenu
set path+=**
set wildignore+=**/node_modules/**
set hidden
set nocp
set autochdir
filetype plugin on
filetype plugin on
set omnifunc=syntaxcomplete#Complete


call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'machakann/vim-highlightedyank'
" Themes
Plug 'pineapplegiant/spaceduck'

" IDE
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'zchee/deoplete-jedi'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'rbgrouleff/bclose.vim' 
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'mattn/emmet-vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
call plug#end()


if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colorscheme spaceduck
let g:netrw_banner = 0
let g:netrw_winsize=20
let g:airline_theme='spaceduck'
let g:lightline = {
  \ 'colorscheme': 'spaceduck',
  \ }

nnoremap <A-1> :Ex<CR>
map oo o<Esc>k
nmap OO O<Esc>j
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <silent> <C-p> :FZF<CR>
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>
"Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"
" " Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

"Emmet leader 
let g:user_emmet_leader_key='<space>'
