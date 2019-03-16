set nocompatible
filetype off

"Plugins

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomasiser/vim-code-dark'
Plugin 'tpope/vim-fugitive' 
call vundle#end()
filetype plugin indent on

"basic settings

let mapleader =" "

set number relativenumber
syntax on
set showcmd
set splitbelow splitright "split new windows below and to the right by default
set wildmenu "visual autocomplete for command menu
set showmatch "highlight matching [{()}]
set incsearch "search as characters are entered
set hlsearch "highlight matches
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o "Disable auto comments on newline

"Keybindings

"switch tabs/windows with ctrl + hjkl
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' 
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
"swap caps and esc keys only in vim

nnoremap <leader><space> :nohlsearch<CR>
"turn off search highlight

"Copy and paste key bindings
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-v> "+P

"toggle NERD tree with ctrl + n
map <C-n> :NERDTreeToggle<CR>

"syntastic settings

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_python_exec = 'python3'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Themes
colorscheme codedark
let g:airline_theme = 'simple'
