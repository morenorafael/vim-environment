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
set sw=4
set relativenumber
set laststatus=2
set t_Co=256

call plug#begin('~/.vim/plugged')

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc-rls'
Plug 'fannheyward/coc-pyright'

Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'noahfrederick/vim-laravel'

Plug 'vim-python/python-syntax'
Plug 'StanAngeloff/php.vim'
Plug 'pangloss/vim-javascript'

call plug#end()

" Theme config
let g:material_terminal_italics = 1
colorscheme material

if (has('termguicolors'))
  set termguicolors
endif

syntax on
let g:airline_theme = 'material'
let g:lightline = { 'colorscheme': 'material_vim' }

" IDE config
let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>gs :CocSearch

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <c-p> :Files<CR>
nmap <c-n> :tabnew<CR>
