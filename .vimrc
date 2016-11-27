call pathogen#infect()
let mapleader = ","
set background=dark
colorscheme solarized

" With :set hidden, opening a new file when the current buffer has unsaved changes causes files to be hidden instead of closed
set hidden

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set relativenumber  " show relative line numbers
set ignorecase      " ignore case when searching 

set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files

set wildignore+=*/.git/*,*/vendor/*,*/sdk/*,*node_modules/*
set wildmode=longest,list,full
set wildmenu

let g:ctrlp_extensions = ['tag', 'buffertag']
map <leader>g :CtrlP<CR>
map <leader>t :CtrlPBufTagAll<CR>
let g:ctrlp_user_command = ['.git/', 'git ls-files --cached --others  --exclude-standard %s']

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

" font
set gfn=Monaco:h14
set guifont=Monaco:h14

nmap Y vg_"*y
nnoremap / /\v
vnoremap / /\v

set showmatch
set wrap
set textwidth=79
set formatoptions=qrn1
set cmdheight=2
set wildcharm=<Tab>

" Lusty leaders
map <leader>f :LustyFilesystemExplorerFromHere<CR>
map <leader>b :LustyBufferExplorer<CR>
map <leader>h :LustyFilesystemExplorer<CR>
map <leader>j :LustyJuggler<CR>
let g:LustyJugglerShowKeys = 'a'  
let g:LustyJugglerSuppressRubyWarning = 1

" general shortcuts
nnoremap <leader><space> :noh<CR>
map <leader>w :w<CR>
map <leader>q :q<CR>
map <leader>y vi""+y
map <leader>m /\(<CR>cib
map <leader>n :e <C-r>%

" Vertical split 
map <leader>v :vs<CR><C-w>w

" Move between split panes
nmap <silent> <C-l> <C-w>w

" quickly open files
map <leader>x :e /Users/binoy/work/scrap.txt<CR>
map <leader>z :e /Users/binoy/.vimrc<CR>

nmap <c-s> :cd %:h<CR> " set home directory as the currently opened file

" hashrocket in insert mode
imap <d-j> =>

set guioptions-=e

let g:taboo_tab_format = " %N %a"

