" vim-plug (https://github.com/junegunn/vim-plug) settings
" Automatically install vim-plug and run PlugInstall if vim-plug not found
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'matze/vim-move'
Plug 'tpope/vim-commentary'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

Plug 'kana/vim-textobj-user'
Plug 'lucapette/vim-textobj-underscore' | Plug 'kana/vim-textobj-user'
Plug 'jceb/vim-textobj-uri'             | Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'          | Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'            | Plug 'kana/vim-textobj-user'
Plug 'wellle/targets.vim'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-obsession'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mtth/scratch.vim'

Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'mkitt/tabline.vim'
Plug 'mattn/emmet-vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'wokalski/autocomplete-flow'
Plug 'petRUShka/vim-sage'
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
" Plug 'sbdchd/neoformat'

" All javascript things
" Plug 'othree/yajs.vim'
" Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'neoclide/vim-jsx-improve'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Plug 'jelera/vim-javascript-syntax'
" Plug 'PotatoesMaster/i3-vim-syntax'
" Plug 'posva/vim-vue'
" Plug 'mxw/vim-jsx'
" Plug 'flowtype/vim-flow'
" Plug 'elzr/vim-json'
" Plug 'othree/jsdoc-syntax.vim' 
Plug 'styled-components/vim-styled-components'

" Plug 'tpope/vim-markdown'
" Plug 'ap/vim-css-color'
" Plug 'digitaltoad/vim-pug'
" Plug 'leafgarland/typescript-vim'
" Plug 'kchmck/vim-coffee-script'
" Plug 'pangloss/vim-javascript'
" Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'heavenshell/vim-jsdoc'

" Php things
Plug 'StanAngeloff/php.vim'
Plug '2072/PHP-Indenting-for-VIm'

" Snippets are separated from the engine. Add this if you want them:
" Plug 'honza/vim-snippets'


" All of your Plugins must be added before the following line
call plug#end()

" Leader
let mapleader = " "
let maplocalleader = "\\"

" Display relative line numbers
set relativenumber
" display the absolute line number at the line you're on
set number

" Keep the line number gutter narrow so three digits is cozy.
set numberwidth=2

" By default don't wrap lines
set nowrap

" But do wrap on these types of files...
autocmd FileType markdown setlocal wrap
autocmd FileType html setlocal wrap

" " https://github.com/justinmk/vim-sneak
" " Map Sneak_s using nmap-- not nnoremap. That seems to cause problems
" nmap <Tab> <Plug>Sneak_s
" nmap <S-Tab> <Plug>Sneak_S
" vmap <Tab> <Plug>Sneak_s
" vmap <S-Tab> <Plug>Sneak_S

" Various opinionated keybind, wheyy!
noremap <silent> <Leader>n :NERDTreeTabsToggle<CR>
nnoremap <silent> <Leader>jd :JsDoc<CR>

nnoremap <leader>ep :tabedit ~/.config/polybar/config<cr>
nnoremap <leader>ei :tabedit ~/.config/i3/config<cr>
nnoremap <leader>et :tabedit ~/.config/tidy.conf<cr>
nnoremap <leader>ezp :tabedit ~/.zpreztorc<cr>
nnoremap <leader>ez :tabedit ~/.zshrc<cr>
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" use leader to interact with the system clipboard
nnoremap <Leader>p "*]p
nnoremap <Leader>P "*]P

nnoremap <Leader>y :y*<cr>
nnoremap <Leader>c ^"*c$
nnoremap <Leader>d ^"*d$

vnoremap <Leader>y "*y
vnoremap <Leader>c "*c
vnoremap <Leader>d "*d

" Make the dot command work as expected in visual mode (via
" https://www.reddit.com/r/vim/comments/3y2mgt/do_you_have_any_minor_customizationsmappings_that/cya0x04)
vnoremap . :norm.<CR>

nmap <silent> gt :bnext<CR>
nmap <silent> gT :bprev<CR>

" Have the indent commands re-highlight the last visual selection to make
" multiple indentations easier
vnoremap > >gv
vnoremap < <gv

" Bind the scratch pad
noremap <silent> <Leader>S :Scratch<CR>

" Navigate between ale errors quickly
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" j and k don't skip over wrapped lines in following FileTypes, unless given a count (helpful since I display relative line numbers in these file types)
autocmd FileType html,markdown,text nnoremap <expr> j v:count ? 'j' : 'gj'
autocmd FileType html,markdown,text nnoremap <expr> k v:count ? 'k' : 'gk'
autocmd FileType html,markdown,text vnoremap <expr> j v:count ? 'j' : 'gj'
autocmd FileType html,markdown,text vnoremap <expr> k v:count ? 'k' : 'gk'

" In markdown files, Control + a surrounds highlighted text with square
" brackets, then dumps system clipboard contents into parenthesis
autocmd FileType markdown vnoremap <c-a> <Esc>`<i[<Esc>`>la](<Esc>"*]pa)<Esc>

" Make sure Vim returns to the same line when you reopen a file.
" Thanks, Amit
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

set modelines=0
set autoindent
set showmode
set showcmd
set hidden
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set number
set relativenumber
set laststatus=2
set history=1000
set undofile
set undoreload=10000
set list
" set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set listchars=tab:→\ ,eol:↲,trail:·,extends:⟩,precedes:⟨
set lazyredraw
set matchtime=3
set showbreak=↪
set splitbelow
set splitright
set autowrite
set autoread
set shiftround
set title
set linebreak
set colorcolumn=+1
set hlsearch
set mouse=a

set fillchars=diff:⣿,vert:│
" set fillchars=diff:⣿,vert:\|

" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

" Make Vim able to edit crontab files again.
set backupskip=/tmp/*,/private/tmp/*"


set backup                        " enable backups
set noswapfile                    " it's 2013, Vim.

set undodir=~/.config/nvim/undo//     " undo files
set backupdir=~/.config/nvim/backup// " backups
set directory=~/.config/nvim/swap//   " swap files

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

set shiftwidth=2
set tabstop=2
set softtabstop=2
set autoindent
set expandtab
set wrap
set textwidth=100
set formatoptions=qrn1j
set colorcolumn=+1

" set search case to a good configuration http://vim.wikia.com/wiki/Searching
set ignorecase
set smartcase

" search characters as they're entered
set incsearch

" Color theme
syntax on
set background=dark
colorscheme Tomorrow-Night-Eighties

" highlight NonText ctermbg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" and use powerline symbols for airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_eighties'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'

set statusline=%f
set statusline+=\ %h%w%m%r
set statusline+=%=
set statusline+=%-16(%{exists('g:loaded_fugitive')?fugitive#statusline():''}\%)
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=\ %P/%L
set statusline+=\

" let g:ctrlp_show_hidden = 1
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

let g:markdown_fenced_languages = ['html', 'css', 'javascript', 'ruby', 'python', 'bash=sh', 'yaml', 'json']

let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1
" if !exists('g:deoplete#omni#input_patterns')
"   let g:deoplete#omni#input_patterns = {}
" endif
" " let g:deoplete#disable_auto_complete = 1
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" " omnifuncs
" augroup omnifuncs
"   autocmd!
"   autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"   autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"   autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"   autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"   autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" augroup end

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

vnoremap <leader>fj :'<,'>!prettier-eslint --stdin<CR>
" vnoremap <leader>fh :'<,'>!tidy -config ~/.config/tidy.conf<CR><CR>
vnoremap <leader>fh :'<,'>!html-beautify --preserve-newlines --max-preserve-newlines 1 --indent-size 2<CR>

vnoremap <leader>cp :'<,'>!pug --pretty<CR>
nnoremap <leader><F8> mpgggqG`pzz

autocmd FileType javascript set formatprg=yarn\ run\ --silent\ prettier-eslint\ --stdin\ --log-level\ error

" Neoformat
" autocmd BufWritePre *.js Neoformat
" autocmd FileType javascript setlocal formatprg=prettier-eslint\ --stdin
" Use formatprg when available
" let g:neoformat_try_formatprg = 1

" let g:syntastic_javascript_checkers = ['eslint']

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

let g:jsdoc_enable_es6 = 1
let g:jsdoc_underscore_private = 1

let g:jsx_ext_required = 0
let g:flow#showquickfix = 0

let g:airline#extensions#ale#enabled = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

let g:ale_linters = {'jsx': ['stylelint', 'eslint']}
let g:ale_linter_aliases = {'jsx': 'css'}

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

let g:fzf_command_prefix = 'Fzf'

let g:fzf_action = {
\ 'ctrl-t': 'tab split',
\ 'ctrl-x': 'split',
\ 'ctrl-d': 'bdelete',
\ 'ctrl-v': 'vsplit' }

nmap <silent> <c-p>  :FzfGFiles<CR>
nmap <silent> <c-b>  :FzfBuffers<CR>
nmap <silent> <leader><c-p>  :FzfAg<CR>
nmap <silent> <leader>bd :%bd\|e#\|bd#<CR>

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

let g:closetag_xhtml_filenames = '*.xhtml,*.html,*.js,*.jsx,*.vue'

