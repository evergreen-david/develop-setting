set langmenu=en_US
let $LANG = 'en_US'

syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'junegunn/vim-easy-align'
call vundle#end()

set nu

""""""""""""""""""""""""""""""""""""""""""""
""""""""""""For python""""""""""""""""""""""
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
set softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""
set showmatch

colorscheme brogrammer
""""""""""""""""""""""""""""""""""
" NERD Tree
""""""""""""""""""""""""""""""""""

" map <F3> :NERDTreeToggle<CR>

let mapleader=","
nnoremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>

noremap <C-h> <C-w>h
noremap <C-j> <C-W>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <C-F> :NERDTreeFind<CR>
nnoremap <Leader>b :NERDTreeToggle<CR>

" Show hidden files, too
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1

" Highlight the selected entry in the tree
let NERDTreeHighlightCursorline=1

set hlsearch
set mouse=a " 커서 이동을 마우스로 가능하도록
set bs=indent,eol,start " backspace 사용가능

au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set t_Co=256

set clipboard=unnamed " use OS clipboard

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nnoremap <C-\> :vert winc ]<CR>

