" Enabling filetype support provides filetype-specific indenting,
" syntax highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on

" `matchit.vim` is built-in so let's enable it!
" Hit `%` on `if` to jump to `else`.
runtime macros/matchit.vim

" Open NERDTree on startup (Activate if needed)
" autocmd vimenter * NERDTree

" Also use C-n
map <C-n> :NERDTreeToggle<CR>

" leader key
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Toggle relative number
map <silent> <leader>r :set rnu! <cr>

" various settings
set autoindent                 " Minimal automatic indenting for any filetype.
set backspace=indent,eol,start " Proper backspace behavior.
set hidden                     " Possibility to have more than one unsaved buffers.
set incsearch                  " Incremental search, hit `<C-R>` to stop.
set ruler                      " Shows the current line number at the bottom-right of the screen.
set wildmenu                   " Great command-line completion, use `<Tab>` to move around and <C-R> to validate.
set number                     " Display line numbers
set noshowmode                 " Don't show mode
set showcmd                    " Display incomplete commands
set hlsearch                   " Highlight search results
set ruler		               " Always show current position

set ignorecase                 " Ignore case when searching
set smartcase                  " Override ignorecase when capital letters are entered

set tabstop=4
set shiftwidth=4
set expandtab

set cmdheight=2                " cmd window height 2

" Set and format status line
set laststatus=2

" Set line colorscheme
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" Set colorscheme
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" Highlight current line number
set cursorline
hi clear CursorLine

" Turn off backups and stuff (.swp)
set nobackup
set nowb
set noswapfile

" Turn off highlighting
map <silent> <leader><cr> :noh<cr>

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Rotate buffers
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>