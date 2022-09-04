call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
call plug#end()

syntax enable
filetype plugin indent on
colorscheme onedark
set background=dark
set t_Co=256
let g:airline_theme='onedark' " <theme> is a valid theme name
let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)

set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" Tabs size
set expandtab
set shiftwidth=4
set tabstop=4

" Python
" Autoclose autocomplete window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" Navigate throut autocomple using tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"
