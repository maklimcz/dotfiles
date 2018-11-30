"""""""""00-encoding.vim
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set langmenu=en_US.UTF-8
set spelllang=en_us

set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
set clipboard=unnamedplus  " yank to xclip
 
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally

set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set softtabstop=4	" Number of spaces per Tab
 
set ruler	" Show row and column ruler information
set undolevels=1000	" Number of undo levels
set mouse=a 
set updatetime=100
set tags=.tags;/
"
" backup
" save either in local .vim-backup, in $VIM/backup, or in .
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=$BACKUP_PATH
set backupdir^=./.vim-backup/
set backup

" swap
" save either in local .vim-swap, in $VIM/swap, or in .
set directory=./.vim-swap//
set directory+=$SWAP_PATH//
set directory+=/tmp//
set directory+=.

" undo
" save either in local .vim-undo, in $VIM/undo, or in .
if exists("+undofile")
    set undodir=./.vim-undo//
    set undodir+=$UNDO_PATH//
    set undodir+=.

    set undolevels=1024
    set undofile
endif

map <C-p> :FZF<CR>
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
nnoremap ; :
vnoremap ; :

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'rafi/awesome-vim-colorschemes'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'vim-scripts/a.vim'
Plug 'nelstrom/vim-visual-star-search'
Plug 'tpope/vim-commentary'
Plug 'majutsushi/tagbar'


call plug#end()

set termguicolors
set cursorline

colorscheme onedark
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#tabline#show_close_button = 0

" Only filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:ycm_confirm_extra_conf = 0

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

map <F2> :A<CR>
nmap <F8> :TagbarToggle<CR>
set wildmenu
