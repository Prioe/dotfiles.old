" My keyboard is programmable and heavily customized. Many key combos here
" thus make little to no sense on a regular keyboard.
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    " " The following are examples of different formats supported.
    " " Keep Plugin commands between vundle#begin/end.
    " " plugin on GitHub repo
    Plugin 'vim-syntastic/syntastic'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'vim-airline/vim-airline'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'mhinz/vim-signify'
    Plugin 'ap/vim-css-color'
    Plugin 'christoomey/vim-tmux-navigator'
    Plugin 'chriskempson/vim-tomorrow-theme'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'scrooloose/nerdtree'
    Plugin 'jistr/vim-nerdtree-tabs'
    Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plugin 'ryanoasis/vim-devicons'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'pangloss/vim-javascript'
    Plugin 'jelera/vim-javascript-syntax'
    Plugin 'PotatoesMaster/i3-vim-syntax'
    Plugin 'othree/javascript-libraries-syntax.vim'
    Plugin 'mattn/emmet-vim'
    " Plugin 'edkolev/tmuxline.vim'
    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line

let mapleader=" "

" Always show airline
set laststatus=2
" and use powerline symbols for airline
let g:airline_powerline_fonts = 1
colorscheme Tomorrow-Night-Eighties
let g:airline_theme = 'base16_eighties'
syntax on
set cursorline
" Sane splitting behavior.
set splitbelow
set splitright
" Don't close buffers I'm almost certainly not done with.
set hidden
" Show me when my leader timeout hits.
set showcmd
" Mouse support
set mouse=a
" Numbering is essential, and if I keep relative numbering on, I'm more likely
" to start navigating more efficiently.
set number
set rnu
set backspace=indent,eol,start
" Anything else would be heresy.
set expandtab
" Indenting is 2 spaces. No more. No less. Unless someone else wrote the
" yacc file. Then all bets are off.
set shiftwidth=2
set tabstop=2
set softtabstop=2
set autoindent
" Does the right thing (mostly) in programs.
set smartindent
" stricter rules for C programs
set cindent
" Highlight matches and show incremental matches when searching.
set hlsearch
set incsearch
" This seems to keep my autocomplete happy.
set shortmess+=c
" Keep selection when indenting/outdenting.
vnoremap > >gv
vnoremap < <gv
" Invisibles
set showbreak=↪\ 
set listchars=tab:→\ ,eol:↲,trail:·,extends:⟩,precedes:⟨
set list
" Visual lines, not file lines. Usually not an issue.
noremap <Up> gk
noremap <Down> gj
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
" Hide away backup and swap files.
set backupdir=~/.vim/backup
set directory=~/.vim/backup
" Assist with entering the date.
iabbrev ddate <C-r>=strftime("%D")<CR>

" highlight NonText ctermbg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" Various opinionated keybind, wheyy!
map <Leader>n <plug>NERDTreeTabsToggle<CR>
nnoremap <leader>ei :tabedit ~/dotfiles/i3/.config/i3/config<cr>
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

vnoremap // y/<C-R>"<CR>"

let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:syntastic_javascript_checkers = ['eslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ctrlp_show_hidden = 1

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

let g:user_emmet_leader_key='<NUL>'

