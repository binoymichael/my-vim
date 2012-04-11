set nocompatible 
let mapleader = ","
nmap <c-s> :cd %:h<CR>
colorscheme slate
set background=dark
set hidden
syntax on
filetype on
filetype plugin on
filetype indent on
set autoindent
map <C-n> <ESC>:tabnew<RETURN>
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set relativenumber  " show relative line numbers
set ignorecase      " ignore case when searching 
map <F1> :previous<CR>  " map F1 to open previous buffer
map <F2> :next<CR>      " map F2 to open next buffer
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
set wildignore+=*/.git/*,*/vendor/*
let g:ctrlp_extensions = ['tag', 'buffertag']
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" tab navigation like firefox
:nmap <C-S-tab> :tabprevious<CR>
:nmap <C-tab> :tabnext<CR>
:map <C-S-tab> :tabprevious<CR>
:map <C-tab> :tabnext<CR>
:imap <C-S-tab> <Esc>:tabprevious<CR>i
:imap <C-tab> <Esc>:tabnext<CR>i

set gfn=DejaVu\ Sans\ Mono\ 9
nmap <A-v> "+gp
imap <A-v> <ESC><A-v>i
vmap <A-c> "+y
noremap Y y$
runtime macros/matchit.vim 
:set guioptions-=m
:set guioptions-=T
:set mouse=r
nnoremap / /\v
vnoremap / /\v
set showmatch
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=81
set cmdheight=2
set wildmode=longest,list,full
set wildmenu
map <leader>f :LustyFilesystemExplorerFromHere<CR>
map <leader>b :LustyBufferExplorer<CR>
map <leader>h :LustyFilesystemExplorer<CR>
map <leader>g :CtrlP<CR>
map <leader>t :CtrlPBufTagAll<CR>
map <leader>x :e ~/Desktop/scrap<CR>
map <leader>z :e ~/.vimrc<CR>
nnoremap <leader><space> :noh<CR>
map <leader>d :w\|!bundle exec rspec --no-color spec/<CR>
map <leader>a :Ack
map <leader>w :w<CR>
map <leader>q :q<CR>
map <leader>v :vs<CR><C-w>w
map <leader>y vi""+y
map <leader>cb /\(<CR>cib
map <leader>l <C-w>w

:inoremap hms headers[:msisdn]
