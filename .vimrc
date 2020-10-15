""" General settings
syntax on
filetype plugin indent on
set number
set lazyredraw
let mapleader = "-"

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
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'file://'.expand('~/git/wpgtk.vim')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chriskempson/base16-vim'
Plug 'mariappan/dragvisuals.vim'

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
map <C-r> :so ~/.vimrc<CR>
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>

""" Colorscheme
set termguicolors
colorscheme colors
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

""" FZF
" Empty value to disable preview window altogether
let g:fzf_preview_window = ''

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" Adapt to vim
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.4, 'yoffset': 1, 'border': 'sharp' } }

""" DragVisuals
map <expr> <C-Left> DVB_Drag('left')
xmap <expr> <C-Right> DVB_Drag('right')
xmap <expr> <C-Down> DVB_Drag('down')
xmap <expr> <C-Up> DVB_Drag('up')
