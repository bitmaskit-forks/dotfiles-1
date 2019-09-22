" Vim-Plug
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'cocopon/iceberg.vim' 
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-surround'
call plug#end()

" NERDTree Plugin
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeShowHidden=1

" deoplete.nvim Plugin
let g:deoplete#enable_at_startup = 1

" Lightline Plugin
let g:lightline = {
      \ 'colorscheme': 'iceberg',
      \ }

" Theme
set background="dark"
colorscheme iceberg
set termguicolors

" Map leader to
let mapleader=','

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Disable compatibility
set nocompatible

" Disable showing modes
set noshowmode

" Tabs
"set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Syntax highlighting
syntax on

" Line numbers
set number

" Line & column dispaly
set ruler

" Status bar
set laststatus=2

" Disable audible bell
set vb

"Disable visual bell
set novisualbell

" Disable error bell
set noerrorbells

" Disable backup/swap
set nobackup
set nowritebackup
set noswapfile

" Mouse support
set mouse=a

" Split to right & below
set splitright
set splitbelow

" Save the current buffer using the leader key
noremap <leader>w :w<CR>

" Save and exit using the leader key
noremap <leader>e :wq<CR>

" Exit without saving using the leader key
noremap <leader>q :q!<CR>

" Clipboard copy/paste/cut
if has ('unnamedplus')
	set clipboard=unnamed,unnamedplus
endif

" Copy to clipboard
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy

" Paste from clipboard
vnoremap <leader>p "+p
vnoremap <leader>P "+P
nnoremap <leader>p "+p
nnoremap <leader>P "+P
