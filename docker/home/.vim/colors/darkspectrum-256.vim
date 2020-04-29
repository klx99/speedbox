" Vim color file
"
" Author: Brian Mock <mock.brian@gmail.com>
"
" Note: Based on Oblivion color scheme for gedit (gtk-source-view)
"
" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="darkspectrum-256"

highlight Normal guifg=#efefef guibg=#2a2a2a ctermfg=255 ctermbg=233

" highlight groups
highlight Cursor guifg=black guibg=white ctermfg=black ctermbg=white
highlight CursorLine term=underline guibg=grey40 ctermbg=241 cterm=NONE
highlight CursorColumn term=reverse guibg=grey40 ctermbg=241

"hi DiffText     guibg=#4e9a06 guifg=white gui=bold
"hi DiffChange   guibg=#4e9a06 guifg=white gui=bold
"hi DiffAdd      guibg=#204a87 guifg=white gui=bold
"hi DiffDelete   guibg=#5c3566 guifg=white gui=bold

highlight DiffAdd guifg=#ffcc7f guibg=#a67429 gui=NONE ctermfg=222 ctermbg=130 cterm=NONE
highlight DiffChange guifg=#7fbdff guibg=#425c78 gui=NONE ctermfg=75 ctermbg=24 cterm=NONE
highlight DiffText guifg=#8ae234 guibg=#4e9a06 gui=NONE ctermfg=112 ctermbg=70 cterm=NONE
"hi DiffDelete      guifg=#252723 guibg=black gui=none
highlight DiffDelete guifg=black guibg=black gui=NONE ctermfg=black ctermbg=black cterm=NONE
highlight ErrorMsg term=standout guifg=white guibg=red ctermfg=white ctermbg=red

highlight Number guifg=#fce94f ctermfg=227

highlight Folded guifg=white guibg=black gui=bold ctermfg=white ctermbg=black cterm=bold
"hi vimFold		guibg=black guifg=white gui=bold
highlight vimFold guifg=white guibg=black gui=bold ctermfg=white ctermbg=black cterm=bold
highlight FoldColumn guifg=white guibg=black gui=bold ctermfg=white ctermbg=black cterm=bold

highlight LineNr guifg=#535353 guibg=#202020 ctermfg=239 ctermbg=234
highlight NonText guifg=#535353 guibg=#202020 ctermfg=239 ctermbg=234
highlight Folded guifg=#535353 guibg=#202020 gui=bold ctermfg=239 ctermbg=234 cterm=bold
highlight FoldeColumn guifg=#535353 guibg=#202020 gui=bold ctermfg=239 ctermbg=234 cterm=bold
"hi VertSplit	guibg=white guifg=white gui=none

highlight VertSplit guifg=#3c3c3c guibg=#3c3c3c gui=NONE ctermfg=237 ctermbg=237 cterm=NONE
highlight StatusLine guifg=white guibg=#3c3c3c gui=NONE ctermfg=white ctermbg=237 cterm=NONE
highlight StatusLineNC guifg=#808080 guibg=#3c3c3c gui=NONE ctermfg=244 ctermbg=237 cterm=NONE

highlight ModeMsg guifg=#fce94f ctermfg=227
highlight MoreMsg guifg=#fce94f ctermfg=227
highlight Visual guifg=white guibg=#3465a4 gui=NONE ctermfg=white ctermbg=25 cterm=NONE
highlight VisualNOS guifg=white guibg=#204a87 gui=NONE ctermfg=white ctermbg=25 cterm=NONE
highlight IncSearch guifg=#ef5939 guibg=white ctermfg=196 ctermbg=white
highlight Search term=reverse guifg=black guibg=yellow ctermfg=black ctermbg=yellow
highlight SpecialKey guifg=#8ae234 ctermfg=112

highlight Title guifg=#ef5939 ctermfg=196
highlight WarningMsg guifg=#ef5939 ctermfg=196
highlight Number guifg=#fcaf3e ctermfg=214

highlight MatchParen guifg=white guibg=#ad7fa8 ctermfg=white ctermbg=139
highlight Comment guifg=#8a8a8a ctermfg=245
highlight Constant guifg=#ef5939 gui=NONE ctermfg=196 cterm=NONE
highlight String guifg=#fce94f ctermfg=227
highlight Identifier guifg=#729fcf ctermfg=110
"highlight Statement guifg=white gui=bold ctermfg=white cterm=bold
highlight Statement term=bold guifg=#ffff60 gui=bold ctermfg=227 cterm=bold
"highlight PreProc guifg=white gui=bold ctermfg=white cterm=bold
highlight PreProc term=bold guifg=blue ctermfg=blue
highlight Type guifg=#8ae234 gui=bold ctermfg=112 cterm=bold
highlight Special guifg=#e9b96e ctermfg=179
highlight Underlined guifg=#ad7fa8 gui=underline ctermfg=139 cterm=underline
highlight Directory guifg=#729fcf ctermfg=110
highlight Ignore guifg=#555753 ctermfg=240
highlight Todo guifg=white guibg=#ef5939 gui=bold ctermfg=white ctermbg=196 cterm=bold
highlight Function guifg=#ad7fa8 ctermfg=139



"hi WildMenu     guibg=#2e3436 guifg=white gui=bold
"hi WildMenu     guifg=#7fbdff guibg=#425c78 gui=none
"highlight WildMenu guifg=white guibg=#3465a4 gui=NONE ctermfg=white ctermbg=25 cterm=NONE
highlight WildMenu term=standout guifg=black guibg=yellow ctermfg=black ctermbg=yellow

highlight Pmenu guibg=grey40 ctermbg=241
highlight PmenuSel guifg=white guibg=darkblue ctermfg=white ctermbg=18
highlight PmenuSbar guibg=darkgray ctermbg=248
highlight PmenuThumb guibg=black ctermbg=black

hi cppSTLType   guifg=#729fcf gui=bold

hi spellBad     guisp=#fcaf3e
hi spellCap     guisp=#73d216
hi spellRare    guisp=#ad7fa8
hi spellLocal   guisp=#729fcf

hi link cppSTL          Function
hi link Error			Todo
hi link Character		Number
hi link rubySymbol		Number
hi link htmlTag			htmlEndTag
"hi link htmlTagName     htmlTag
hi link htmlLink		Underlined
hi link pythonFunction	Identifier
hi link Question		Type
hi link CursorIM		Cursor
hi link VisualNOS		Visual
hi link xmlTag			Identifier
hi link xmlTagName		Identifier
hi link shDeref			Identifier
hi link shVariable		Function
hi link rubySharpBang	Special
hi link perlSharpBang	Special
hi link schemeFunc      Statement
"hi link shSpecialVariables Constant
"hi link bashSpecialVariables Constant

highlight cCustomFunc term=bold guifg=#66ffff gui=bold ctermfg=87 cterm=bold
highlight cCustomClass term=bold guifg=#00ccff gui=bold ctermfg=81 cterm=bold

" tabs (non gui)
highlight TabLine guifg=#a3a3a3 guibg=#202020 gui=NONE ctermfg=248 ctermbg=234 cterm=NONE
highlight TabLineFill guifg=#535353 guibg=#202020 gui=NONE ctermfg=239 ctermbg=234 cterm=NONE
highlight TabLineSel guifg=white gui=bold ctermfg=white cterm=bold
"hi TabLineSel	guifg=white guibg=black gui=bold
" vim: sw=4 ts=4
