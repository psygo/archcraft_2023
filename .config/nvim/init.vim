"------------------------------------------------------------------------------
" Plugins

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Editing Utils
Plug 'tpope/vim-surround'

" IDE Stuff
Plug 'tpope/vim-vinegar'  " better netrw
Plug 'tpope/vim-repeat'   " `.` now repeats plugin commands as well
Plug 'preservim/nerdtree'

" Git
Plug 'tpope/vim-fugitive' " git goodness
Plug 'junegunn/gv.vim'    " git browser

call plug#end()
"------------------------------------------------------------------------------
set clipboard=unnamedplus

" Mapping Space to Leader
nnoremap <SPACE> <Nop>
let mapleader=" "

" Wrapped Lines
set nowrap
set relativenumber
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
nnoremap <C-o> :GFiles<CR>
nnoremap <C-f> :Rg<CR>
