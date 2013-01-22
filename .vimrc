" Cobbled together from the internet (mostly from 
" rtomayko's dotfiles on github: 
" http://github.com/rtomayko/dotfiles/blob/rtomayko/.vimrc)

" ----------------------------------------------------------
" GENERAL
" ----------------------------------------------------------

set nocompatible " No vi compatibility
set history=1000 " lots of history

" Show syntax coloring
syntax enable

" Set tabstop; 2 spaces instead of 4. AND ALWAYS SPACES.
set tabstop=2 softtabstop=2 shiftwidth=2
set autoindent
set hls
set expandtab
" Show line numbers
set number

" Incremental search, ingore case, unless all caps
set incsearch
set ignorecase 
set smartcase

" Show matching parens
" set showmatch

" Show current mode
set showmode
set showcmd

" Show current position
set ruler

" Shut the fuck up
set visualbell t_vb=
" Set text wrapping
set textwidth=100

" Smart wrap?
set formatoptions=l
set lbr

" Stop wrapping my shit
set nowrap

" Turn on the filetype plugin
filetype plugin indent on 

" ----------------------------------------------------------------------------
"  Backups
" ----------------------------------------------------------------------------

set nobackup                           " do not keep backups after close
set nowritebackup                      " do not keep a backup while working
set noswapfile                         " don't keep swp files either
set backupdir=$HOME/.vim/backup        " store backups under ~/.vim/backup
set backupcopy=yes                     " keep attributes of original file
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=~/.vim/swap,~/tmp,.      " keep swp files under ~/.vim/swap


"-------------------------------------------------------
" STATUSBAR
" ------------------------------------------------------

set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&encoding},                " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%-10.(%l,%c%V%)\ %<%P        " offset

"-------------------------------------------------------
" pathogen.vim for installing plugins 
" ------------------------------------------------------
call pathogen#infect()

"----
" matchit for extending %
" Why isn't this auto-loaded on start?
"---
source ~/.vim/plugins/matchit.vim
source ~/.vim/plugins/ragtag.vim
let g:ragtag_global_maps = 1 

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
