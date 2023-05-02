"------------------------------------------------------------------------------
" Plugins

call plug#begin()

let g:plug_url_format = 'git@github.com:%s.git'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } |
            \ Plug 'junegunn/fzf.vim'

" Editing Utils
Plug 'tpope/vim-surround'

" IDE Stuff
Plug 'tpope/vim-vinegar'  " better netrw
Plug 'tpope/vim-repeat'   " `.` now repeats plugin commands as well
Plug 'tpope/vim-sensible' " sensible setup
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons' 

" Git
Plug 'tpope/vim-fugitive' " git goodness
Plug 'junegunn/gv.vim'    " git browser

"LSP
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()
"------------------------------------------------------------------------------
" General Configs

filetype on
set encoding=UTF-8
set clipboard=unnamedplus
set splitbelow splitright
set wildmenu
set hidden

" Indentation
set shiftwidth=2
set backspace=indent,eol,start
set tabstop=2
set expandtab
set smarttab

" Line Numbering
set relativenumber
set number

" IDE Stuff
set scrolloff=5
set list
set ruler
set colorcolumn=80

" Mapping Space to Leader
nnoremap <SPACE> <Nop>
let mapleader=" "

" Wrapped Lines
set nowrap
nmap j gj
nmap k gk

" When pasting, go to the end of the pasted block
noremap p gp
noremap P gP

" When yanking in visual mode, go to the end of the block after the yank
vmap y y']

" Delete line but don't yank it
nnoremap <leader>d "_d

" Source Vim Config
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

" Vertical Explorer
nnoremap <leader>pv :Vex<CR>

" Save all files
nnoremap <C-s> :wa<CR>

" Scrolling also centers
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" FZF
nnoremap <C-p> :GFiles<CR>
nnoremap <C-f> :Rg<CR>
"------------------------------------------------------------------------------
" LSP

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"------------------------------------------------------------------------------
