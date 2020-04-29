" Vim color file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2006 Apr 14

" This color scheme uses a dark grey background.

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "evening-256"

highlight Normal guifg=white guibg=grey20 ctermfg=231 ctermbg=233

" Groups used in the 'highlight' and 'guicursor' options default value.
highlight ErrorMsg term=standout guifg=white guibg=red ctermfg=231 ctermbg=196
highlight IncSearch term=reverse gui=reverse cterm=reverse
highlight ModeMsg term=bold gui=bold cterm=bold
highlight StatusLine term=reverse,bold gui=reverse,bold cterm=reverse,bold
highlight StatusLineNC term=reverse gui=reverse cterm=reverse
highlight VertSplit term=reverse gui=reverse cterm=reverse
highlight Visual term=reverse guibg=grey60 ctermbg=247
highlight VisualNOS term=underline,bold gui=underline,bold cterm=underline,bold
highlight DiffText term=reverse guibg=red gui=bold ctermbg=196 cterm=bold
highlight Cursor guifg=black guibg=green ctermfg=16 ctermbg=46
highlight lCursor guifg=black guibg=cyan ctermfg=16 ctermbg=51
highlight Directory term=bold guifg=cyan ctermfg=51
highlight LineNr term=underline guifg=yellow ctermfg=226
highlight MoreMsg term=bold guifg=seagreen gui=bold ctermfg=29 cterm=bold
highlight NonText term=bold guifg=lightblue guibg=grey30 gui=bold ctermfg=152 ctermbg=239 cterm=bold
highlight Question term=standout guifg=green gui=bold ctermfg=46 cterm=bold
highlight Search term=reverse guifg=black guibg=yellow ctermfg=16 ctermbg=226
highlight SpecialKey term=bold guifg=cyan ctermfg=51
highlight Title term=bold guifg=magenta gui=bold ctermfg=201 cterm=bold
highlight WarningMsg term=standout guifg=red ctermfg=196
highlight WildMenu term=standout guifg=black guibg=yellow ctermfg=16 ctermbg=226
highlight Folded term=standout guifg=darkblue guibg=lightgrey ctermfg=18 ctermbg=252
highlight FoldColumn term=standout guifg=darkblue guibg=grey ctermfg=18 ctermbg=250
highlight DiffAdd term=bold guibg=darkblue ctermbg=18
highlight DiffChange term=bold guibg=darkmagenta ctermbg=90
highlight DiffDelete term=bold guifg=blue guibg=darkcyan gui=bold ctermfg=21 ctermbg=30 cterm=bold
highlight CursorColumn term=reverse guibg=grey40 ctermbg=241
highlight CursorLine term=underline guibg=grey40 ctermbg=241 cterm=NONE
highlight Pmenu guibg=grey40 ctermbg=241
highlight PmenuSel guifg=white guibg=darkblue ctermfg=231 ctermbg=18
highlight PmenuSbar guibg=darkgray ctermbg=248
highlight PmenuThumb guibg=black ctermbg=16

" Groups for syntax highlighting
highlight Constant term=underline guifg=#ffa0a0 guibg=grey5 ctermfg=217 ctermbg=232
highlight Special term=bold guifg=orange guibg=grey5 ctermfg=214 ctermbg=232
if &t_Co > 8
highlight Statement term=bold guifg=#ffff60 gui=bold ctermfg=227 cterm=bold
endif
highlight Ignore guifg=grey20 ctermfg=236

" vim: sw=2
