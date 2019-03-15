"       _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
let mapleader =" "

set nocompatible
set number relativenumber
syntax on
set showcmd
set splitbelow splitright "change how tabs and windows open
filetype plugin indent on "required

set wildmode=longest,list,full "turn on auto complete

"remove auto commenting and annoying formatting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

autocmd BufWritePre * %s/\s\+$//e " auto delete excess white space

set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Plugins
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomasiser/vim-code-dark'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()            " required

"Keybindings

"switch tabs/windows with ctrl + hjkl
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"open NERD tree with ctrl + n
map <C-n> :NERDTreeToggle<CR>

" open fuzzy finder with ctrl + p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Copy and paste key bindings
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-v> "+P

"bind caps to esc just for vim
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

"Themes
colorscheme codedark
let g:airline_theme = 'codedark'
