" .VIMRC CONFIGURATION "

syntax on
set termguicolors
colorscheme catppuccin

let mapleader = " "

set number
set relativenumber

set cursorline

filetype plugin indent on
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set smartindent

set backspace=indent,eol,start

set formatoptions-=cro

" Moving cursor in <Insert> mode
inoremap <C-h> <Esc>i
inoremap <C-j> <Esc><Down>a
inoremap <C-k> <Esc><Up>a
inoremap <C-l> <Esc><Right>a

" Open Netrw
nnoremap <leader>e :Ex<CR>

" Buffer Management
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bd :bd<CR>

