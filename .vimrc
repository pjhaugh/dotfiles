let g:python_host_skip_check=1
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe'
"Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'jewes/Conque-Shell'
Plugin 'morhetz/gruvbox'
Plugin 'vim-python/python-syntax'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ujihisa/repl.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'zhou13/vim-easyescape'
Plugin 'junegunn/fzf.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Post-Vundle configuration
let mapleader = ","

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=109 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on

set pastetoggle=<leader>p

set nu

set clipboard=unnamed

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set foldmethod=indent
set foldlevel=99

nnoremap <space> za

" map <leader>i :ConqueTermSplit python3 -i<CR>

" Play with ALE settings

let g:ale_warn_about_trailing_blank_lines = 0
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1

let g:ale_python_flake8_options = '--max-line-length=109'

map <leader>f :ALEFix<CR>
" Play with colors

set background=dark
set t_ut=
set t_Co=256
let g:gruvbox_italic=0
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" Activate spellchecking
:setlocal spell spelllang=en_us

"copy (write) highlighted text to .vimbuffer
vnoremap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
noremap <C-v> :r ~/.vimbuffer<CR>


let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
cnoremap jk <ESC>
cnoremap kj <ESC>
vnoremap ; :norm I#<cr>

let g:python3_host_prog='/home/pjhaugh/.pyenv/shims/python3'

let g:airline_theme='deus'
let g:airline_powerline_fonts = 1
