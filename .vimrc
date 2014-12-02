set nocompatible

let mapleader = ","
let maplocalleader = "\\"

set number
set shiftround
set showmatch
filetype indent plugin on
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
set ruler
set showcmd

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable

" toggle on number display
nnoremap <F2> :set number!<CR>

"indent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smartindent
set cindent
set autoindent


" solarized color scheme
set background=dark
colorscheme solarized
set t_Co=16

" map - to move down the line where cursor is for 1 line.
noremap - ddp

" map _ to move up the line where cursor is for 1 line.
noremap _ kddpk

" insert mode, map ctrl+u to change the word to UPPERCASE
inoremap <leader><c-u> <esc>viwUea

" normal mode, map ctral+u to change the word to UPPERCASE
nnoremap <leader><c-u> viwU

" map ev to edit .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" map sv to source .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" force you to use jk instead of <esc>
inoremap jk <esc>
inoremap <esc> <nop>

" toggle on paste mode
nnoremap <leader>pp :setl paste!<CR>

" fast saving
nnoremap <leader>w :w!<CR>

execute pathogen#infect()

" pydiction path
let g:pydiction_location = '/home/jin/.vim/bundle/pydiction/complete-dict'
