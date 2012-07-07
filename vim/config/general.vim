let mapleader = ";" "let's face it, ';' is better than ','

set number "line numbers
set autoread "reload changed files automatically
set hidden "switch between buffers without saving
set laststatus=2 "show status bar
set nofoldenable "don't fold my code, either
set nowrap "no wrapping please, thank you
set scrolloff=8 "start scrolling when cursor is 8 rows away from edge
set sidescrolloff=8 "start scrolling when cursor is 8 columns away from edge

set incsearch "Find the next match as we type the search
set hlsearch "Hilight searches by default
set ignorecase "Ignore case for searches...
set smartcase " ... unless you use a capital letter in search

set autoindent "match indentation on newlines
set smartindent "attempt to be smart about indenting/un-indenting newlines
set smarttab "treat a series of spaces as tabs when appropriate
set shiftwidth=2 "two-space indention width
set softtabstop=2
set tabstop=2
set expandtab "use spaces instead of tabs

filetype plugin on "turn on per-filetype plugins
filetype indent on "turn on per-filetype indentation settings

set list "show hidden characters
" Line-ending: '¬'
" Line extends past window: '»'
" Real tab character: '▸'
" Trailing spaces: '·'
set listchars=eol:¬,extends:»,tab:▸\ ,trail:·
let g:solarized_visibility="low" "very low contrast listchars

" No backups
set noswapfile
set nobackup
set nowb

" Undo across vim sessions
set undodir=/tmp
set undofile

syntax on " syntax highlighting engage!
colorscheme solarized
