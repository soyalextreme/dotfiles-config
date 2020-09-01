" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
let mapleader = " "

" Security
set modelines=0

" Show line numbers
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set showmatch
set relativenumber

" auto complete brackets
inoremap { {<CR>}<Esc>ko


" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" PLUGINS
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
"theme
Plugin 'relastle/bluewery.vim'
"auto pairs
Plugin 'jiangmiao/auto-pairs'




" add all your plugins here (note older versions of Vundle
" " used Bundle instead of Plugin)
Bundle 'Valloric/YouCompleteMe'




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" SPLITING

" SPLIT NAVEGATION
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Encoding
set encoding=utf-8


" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
syntax on


" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" THEME BLUEWERY FOR CHANGE
" For dark
" colorscheme bluewery
" let g:lightline = { 'colorscheme': 'bluewery' }



" PLUG VIM
call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
" JS PLUGS
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'scrooloose/nerdtree'
" Comand Bar Plugins 
Plug 'itchyny/lightline.vim'

call plug#end()

" Theme config
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:deoplete#enable_at_startup = 1
let g:jsx_ext_required = 0
let NERDTreeQuitOnOpen=1
" nt 
nmap <Leader>nt :NERDTreeFind<CR>
" Emmet
let g:user_emmet_mode='inv'  "enable all functions, which is equal to





