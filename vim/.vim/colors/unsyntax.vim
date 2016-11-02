set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "unsyntax"

" First set Normal to regular white on black text colors:
hi Normal ctermfg=LightGray ctermbg=None guifg=#dddddd    guibg=Black

" Syntax highlighting (other color-groups using default, see :help group-name):
hi Comment    cterm=NONE ctermfg=DarkGray
hi Constant   cterm=NONE ctermfg=LightGray
hi Identifier cterm=NONE ctermfg=LightGray
hi Function   cterm=NONE ctermfg=LightGray
hi Statement  cterm=NONE ctermfg=LightGray
hi PreProc    cterm=NONE ctermfg=LightGray
hi Type       cterm=NONE ctermfg=LightGray
hi Special    cterm=NONE ctermfg=LightGray
hi Delimiter  cterm=NONE ctermfg=LightGray
hi String     cterm=NONE ctermfg=Magenta
hi LineNr     cterm=NONE ctermfg=Magenta
hi MatchParen cterm=NONE ctermfg=Blue        ctermbg=NONE
hi CursorLine cterm=NONE ctermbg=NONE
