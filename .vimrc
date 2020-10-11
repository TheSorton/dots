""" General settings
syntax on
filetype plugin indent on
set number
set lazyredraw

"" Set tab stops
set tabstop=4
set softtabstop=4

set autoread
set expandtab

"" Vim-Plug
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-sensible'
Plug 'deviantfero/wpgtk.vim'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

""" Splits
"" I prefer bspwm-style tiling (binary space partitioning) so let's have vim split the same way
set splitright
set splitbelow

"" I don't like C-w when moving around splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""" Lightline stuff
let g:lightline = {
      \ 'colorscheme': 'wal',
      \ }


"" We can also set up a keybind
map <C-a> :NERDTreeToggle<CR>

""" Colorscheme
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme wpgtkAlt
if filereadable(expand("~/.vimrc_background"))
          let base16colorspace=256
            source ~/.vimrc_background
endif


""" Clipboard
"" Set the clipboard
set clipboard=unnamedplus


"" have yank and paste use above clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p

""" Clear buffer
noremap <F8> :1,$d<CR>

""" javascript

autocmd FileType javascript set formatprg=prettier\ --stdin
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 noexpandtab

let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_fix_on_save = 1

au TermOpen * setlocal nonumber norelativenumber
