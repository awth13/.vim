" Enable syntax highlighting and file-based indentation
filetype plugin indent on
syntax on

" Enable match-jumping with %
runtime macros/matchit.vim

" Configure vim-slime for tmux
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": ":.1"}

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

" Tab settings (4 spaces instead of tab)
set tabstop=4
set shiftwidth=4
set expandtab

" cmd window height 2
set cmdheight=2

" Set and format status line
set laststatus=2


" Window split settings
set splitbelow
set splitright
" set termwinsize=10x0

" Stop opening autocomplete window!
autocmd CompleteDone * pclose

" Set 256 colour support
set t_Co=256

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
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox 

" Set cursor type 
" Troubleshoot: is this mess necessary?
if &term =~ '^xterm'
    let &t_EI .= "\<Esc>[1 q" "EI = NORMAL mode
    let &t_SI .= "\<Esc>[5 q" "SI = INSERT mode
    let &t_SR .= "\<Esc>[4 q" "SR = REPLACE mode
elseif exists('$TMUX')
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[1 q\<Esc>\\" 
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_SR = "\<Esc>Ptmux;\<Esc>\e[4 q\<Esc>\\"
else
    let &t_EI = "\e[1 q"
    let &t_SI = "\e[5 q"
    let &t_SR = "\e[4 q"
endif

" Highlight current line number
set cursorline
hi clear CursorLine

" Turn off backups and stuff (.swp)
set nobackup
set nowb
set noswapfile

" Key mappings

" Set leader key
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Toggle relative number
map <silent> <leader>r :set rnu! <cr>

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
