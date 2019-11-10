set nocompatible

set history=1000 " store lots of :cmdline history
set showcmd " show incomplete cmds down the bottom
set showmode " show current mode down the bottom
set visualbell " no sounds
set autoread " reload files changed outside vim
set gcr=a:blinkon0 " disable cursor blink

filetype on " detect the type of file that is edited
syntax on " highlighting parts of the text in another font or color
colorscheme monokai

" turn swap off
set noswapfile
set nobackup
set nowb

" scrolling
set scrolloff=20 " start scrolling when we're 20 lines away from margins
set sidescrolloff=15
set sidescroll=1

set linebreak " wrap lines at convenient points

" indenting
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" searching
set incsearch " find the next match as we type the search
set ignorecase " ignoring case sensitive in searches
set smartcase " considering case sensitive if it's used in a search pattern
set hlsearch " highlighting search matches

set number " show line numbers

set wildmenu " enables a menu at the bottom of the window
set wildmode=list:longest,full

set backspace=indent,eol,start " make the backspace work like in most other programs
