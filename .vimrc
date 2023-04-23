" Syntaxing
syntax on                        " set syntax highlight on
set nu                           " set line numbers

" Highlighting
set incsearch                    " Incremental search. Highlight as you type
set hlsearch                     " Highlight search results once typed

" Backup
set nobackup
set noswapfile

" Set auto read and write
set autowrite
set autoread

" Indentation
filetype indent on             " Turns on autoindent based on file type.
set autoindent                 " Auto indentation
set smartindent                " Smart indent
set expandtab                  " Convert tabs to spaces
set tabstop=2                  " Sidth of a tab
set softtabstop=2              " width of a tab when back_key or tab_key is pressed
set shiftwidth=2               " width of tab on indentation

" Status
set showcmd    " Shows keystrokes of unfinished commands
set ruler

" wrap
set wrap

" Set leader
let mapleader=","

" Shortcut for autofolding
nnoremap <leader>f :set foldmethod=indent<cr>:set foldnestmax=3<cr>

" Open vimrc in vertical split inside vim
noremap <leader>ev :vsplit $MYVIMRC<cr>

" Source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Set relative numbering
noremap <leader><space> :set relativenumber!cr>

" Toggle highlighting
noremap <leader>h :set hlsearch!<cr>

" Auto close paranthesis and quotes
inoremap "<tab> ""<Left>
inoremap '<tab> ''<Left>
inoremap {<tab> {}<Left>
inoremap (<tab> ()<Left>
inoremap [<tab> []<Left>

" Syntax mapping
inoremap f<tab> const = function() {<cr>}<esc>kwi<space><left>
inoremap w<tab> while() {<cr>}<esc>kf(a
inoremap i<tab> if() {<cr>}<esc>kf(a

" Go to normal mode from insert mode
inoremap jk <esc>

" Save a file in insert mode
inoremap <C-s> <esc>:w<cr><esc>i

" Block select
nnoremap <C-s> ViBjok

" Copy to global register
vnoremap <C-y> "*y

" Shift lines down
inoremap <C-j> <esc>:m+1<cr>i
nnoremap <C-j> :m+1<cr> 

" Shift lines up
inoremap <C-k> <esc>:m-2<cr>i 
nnoremap <C-k> :m-2<cr>

" Comment a line in a js and sh file
autocmd filetype javascript nnoremap <leader>c 0i// <esc>
autocmd filetype sh,bash nnoremap <leader>c 0i# <esc>

" Uncomment a line in a js and sh file
autocmd filetype javascript nnoremap <leader>u 0xxx
autocmd filetype sh,bash nnoremap <leader>u 0xx

" Comment a block in a js file
autocmd filetype javascript nnoremap <leader>bc viBjokmmo<esc>o*/<esc>`mO/*<esc>

" Uncomment a block in a js file
autocmd filetype javascript nnoremap <leader>bu viBjj<esc>ddkkviBkk<esc>ciwdd

" Switching buffer
nnoremap <leader>nb :bnext<cr>
nnoremap <leader>np :bprev<cr>

" writting a file
nnoremap <leader>w :w<cr>
inoremap <C-v> <C-r>"
vnoremap <C-y> "*y

" Writing and quiting a file
nnoremap <leader>q :wq<cr>

" Auto indent
augroup AutoIndent
  autocmd!
  autocmd BufWritePre * :normal gg=G``
augroup END

" Map keys in insert mode
inoremap <C-w> <esc>wi<right>
inoremap <C-b> <esc>bi
inoremap <C-6> <esc>^i
inoremap <C-4> <esc>$i

" Go to next line in insert mode
inoremap <C-o> <esc>o

" Source testing prototype
nnoremap <C-t> :read !cat ~/.bin/testing<cr>zz
nnoremap <C-l> :read !cat ~/.bin/testingWithLog<cr>zz

" Adding break between contexts
inoremap <leader>/ <esc>^i//  <esc>30i-<esc>A <esc>30a-<esc>
nnoremap <leader>/ <esc>^i//  <esc>30i-<esc>A <esc>30a-<esc>

" Autocomplete
inoremap <tab><tab> <C-p>

" Map start of line and end of line
nnoremap H ^
nnoremap L $
