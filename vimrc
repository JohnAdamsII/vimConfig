"       _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"

execute pathogen#infect()
syntax on
filetype plugin indent on

set splitbelow splitright
set nocompatible
filetype off
set wildmode=longest,list,full
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <C-n> :NERDTreeToggle<CR>

au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


autocmd BufWritePre * %s/\s\+$//e

set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomasiser/vim-code-dark'
Plugin 'tpope/vim-fugitive'


call vundle#end()            " required
filetype plugin indent on    " required

colorscheme codedark

let g:airline_theme = 'codedark'

set number
set relativenumber
set showcmd
