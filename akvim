call pathogen#infect()
set nocompatible
let mapleader = ","
colorscheme slate
set background=dark
set hidden
set ruler
syntax on
filetype plugin indent on
:runtime macros/matchit.vim 

set fu
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set relativenumber  " show relative line numbers
set ignorecase      " ignore case when searching 

set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files

set wildignore+=*/.git/*,*/vendor/*,*/sdk/*
set wildmode=longest,list,full
set wildmenu
let g:ctrlp_extensions = ['tag', 'buffertag']
let g:LustyJugglerSuppressRubyWarning = 1

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
noremap <D-1> 1gt
noremap <D-2> 2gt
noremap <D-3> 3gt
noremap <D-4> 4gt
noremap <D-5> 5gt
noremap <D-6> 6gt
noremap <D-7> 7gt
noremap <D-8> 8gt
noremap <D-9> 9gt
noremap <D-9> 10gt
noremap <D-S-right> gt
noremap <D-S-left> gT
set gfn=Monaco:h14
set guifont=Monaco:h14

noremap Y y$
nnoremap / /\v
vnoremap / /\v
set showmatch
set wrap
set textwidth=79
set formatoptions=qrn1
set cmdheight=2

map <leader>f :LustyFilesystemExplorerFromHere<CR>
map <leader>b :LustyBufferExplorer<CR>
map <leader>h :LustyFilesystemExplorer<CR>
map <leader>j :LustyJuggler<CR>
map <leader>g :CtrlP<CR>
map <leader>t :CtrlPBufTagAll<CR>
nnoremap <leader><space> :noh<CR>
map <leader>w :w<CR>
map <leader>q :q<CR>
map <leader>v :vs<CR><C-w>w
map <leader>y vi""+y
map <leader>m /\(<CR>cib
map <leader>n :e <C-r>%
vmap <leader>r y<S-p>gvo<ESC>O<Esc>j
nmap <silent> <C-l> <C-w>w
map <leader>x :e /Users/binoy/Work/scrap.txt<CR>
map <leader>z :e /Users/binoy/.vimrc<CR>
map <leader>d :ConqueTerm zsh<CR>

nmap <c-s> :cd %:h<CR>
map <d-h> A#done<Esc>
imap <d-j> =>
