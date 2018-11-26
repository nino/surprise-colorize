" Name: The surprisingly variable colorscheme that always changes
" Author: Nino Annighoefer
" URL: https://github.com/nino/surprise-colorize
" License: CC-0

let g:colors_name = "surprise-colorize"

set background=dark

hi VertSplit term=NONE cterm=NONE ctermfg=245 ctermbg=NONE gui=NONE guifg=black guibg=#6C6C6C
hi ALEError ctermfg=214 ctermbg=none cterm=none
hi ALEWarning ctermfg=219 ctermbg=none cterm=none
hi SpellBad ctermbg=none cterm=underline ctermfg=171
hi DiffAdd ctermfg=green ctermbg=none
hi DiffChange ctermfg=yellow ctermbg=none
hi DiffDelete ctermfg=red ctermbg=none
hi DiffText cterm=none ctermfg=blue ctermbg=none
hi ALEErrorSign ctermfg=red
hi ALEWarningSign ctermfg=214
hi Folded ctermbg=black
hi ColorColumn ctermbg=233
hi TabLine cterm=none ctermfg=249 ctermbg=240 gui=none guibg=DarkGrey
hi TabLineFill cterm=none ctermfg=249 ctermbg=242 gui=none guibg=DarkGrey
hi TabLineSel cterm=bold gui=bold ctermfg=238 ctermbg=254
