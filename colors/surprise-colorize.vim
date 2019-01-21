" Name: The surprisingly variable colorscheme that always changes
" Author: Nino Annighoefer
" URL: https://github.com/nino/surprise-colorize
" License: CC-0

let g:colors_name = "surprise-colorize"

set background=dark

hi VertSplit term=NONE cterm=NONE ctermfg=245 ctermbg=NONE gui=NONE guifg=black guibg=#6C6C6C
hi ALEError ctermfg=214 ctermbg=none cterm=none guifg=#ffaf00
hi ALEWarning ctermfg=219 ctermbg=none cterm=none guifg=#ffafff
hi SpellBad ctermbg=none cterm=underline ctermfg=171 guifg=#d75fff

hi DiffAdd ctermbg=22 ctermfg=none
hi DiffChange ctermbg=234 ctermfg=none
hi DiffDelete ctermbg=52 ctermfg=52
hi DiffText ctermbg=19 ctermfg=none

hi ALEErrorSign ctermfg=red
hi ALEWarningSign ctermfg=214
hi Folded ctermbg=black
hi ColorColumn ctermbg=233
hi Comment ctermfg=152
hi String ctermfg=43 guifg=#00d7af
hi htmlTagName ctermfg=193
hi Statement ctermfg=39 guifg=#00afff
hi Function ctermfg=193 cterm=none

hi Normal ctermfg=none ctermbg=none guibg=#111111 guifg=#ffeeee
hi NonText ctermfg=4 ctermbg=none

hi TabLine cterm=none ctermfg=249 ctermbg=240 gui=none guibg=DarkGrey
hi TabLineFill cterm=none ctermfg=249 ctermbg=242 gui=none guibg=DarkGrey
hi TabLineSel cterm=bold gui=bold ctermfg=238 ctermbg=254

hi CursorLine ctermbg=234 cterm=none

hi StatusLine ctermbg=240 ctermfg=white cterm=none
hi StatusLineNC ctermbg=236 ctermfg=248 cterm=none

hi Visual ctermbg=8 guibg=LightGrey

hi Search ctermbg=11 guibg=Yellow ctermfg=0 guifg=Black
hi MatchParen ctermbg=14 ctermfg=19 guibg=Cyan guifg=Black
