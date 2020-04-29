""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.2.10
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" keyboard shortcut setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set mapleader
let mapleader = ","

" lookupfile
"映射LookupFile为;ft => find tab
nmap <silent> <leader>ft :LUTags<CR>
"映射LUBufs为;lb
nmap <silent> <leader>fb :LUBufs<CR>
"映射LUWalk为;lw
nmap <silent> <leader>fw :LUWalk<CR>

" bufexplore
" <Leader>be  - Opens BE. ":BufExplorer"
" <Leader>bs  - Opens horizontally window BE. ":BufExplorerHorizontalSplit"
" <Leader>bv  - Opens vertically window BE. ":BufExplorerVerticalSplit"

nmap <silent> <leader>q :qa!<CR>


" split
nmap <silent> <leader>h <c-w>h
nmap <silent> <leader>j <c-w>j
nmap <silent> <leader>k <c-w>k
nmap <silent> <leader>l <c-w>l
nmap <silent> <leader>y "+y

" Fxx
nmap <unique> <silent> <F2> :MRU<CR>
nmap <unique> <silent> <F3> :Grep<CR>
nmap <unique> <silent> <F4> :call LookupFileToggle()<CR>
nmap <unique> <silent> <F5> :call IdeViewerToggle()<CR>
nmap <C-F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
nmap <unique> <silent> <F6> :Gitv --all<CR>

let g:qb_hotkey = "<F8>"
" quickfix
nmap <silent> <unique> <leader>co :copen<CR>
nmap <silent> <unique> <leader>cq :cclose<CR>
nmap <silent> <unique> <leader>cn :cn<CR>
nmap <silent> <unique> <leader>cp :cp<CR>

" gitv
" q CloseGitv

" foldmethod
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR>

" ZoomWin
nmap <silent> <leader>o <c-w>o

" hexman
"<leader> hm		HexManager: Call/Leave Hexmode (using xxd) 
"<leader> hd		HexDelete: delete hex character under cursor 
"<leader> hi		HexInsert: Insert Ascii character before cursor 
"<leader> hg		HexGoto: Goto hex offset. 
"<leader> hn		HexNext: Goto next hex offset. 
"<leader> hp		HexPrev: Goto previous hex offset. 
"<leader> hs		HexStatus: Show / Hide hexoffset infos in statusline and related ascii column 

" nerdcommenter
"[count]<leader>cc |NERDComComment|  Comment out the current line or text selected in visual mode.
"[count]<leader>cn |NERDComNestedComment|  Same as <leader>cc but forces nesting.
"[count]<leader>c<space> |NERDComToggleComment| Toggles the comment state of the selected line(s).
"[count]<leader>cs |NERDComSexyComment|  Comments out the selected lines ``sexily''
"[count]<leader>cu |NERDComUncommentLine|  Uncomments the selected line(s).

" marks_corey
"nmap <silent> <unique> mm <Plug>Place_sign
"nmap <silent> <unique> mn <Plug>Goto_next_sign
"nmap <silent> <unique> mp <Plug>Goto_prev_sign
"nmap <silent> <unique> mca <Plug>Remove_all_signs
"nmap <silent> <unique> m. <Plug>Move_sign
"nmap <silent> <unique> ms :call SaveP()<CR>
"nmap <silent> <unique> ml :call ReloadP()<CR>

" Paste last yanked item
noremap <Leader>p "0p
noremap <Leader>P "0P

" :/:'<,'> Align XXX
" bash-support ???
" c-support ???
" doxygen-support ???
" crefvim ???

" keyboard shortcut setting
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Taglist and  NERD_tree open or close 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:ide_viewer_opend = 0
function! IdeViewerToggle()
	if s:ide_viewer_opend == 0
		NERDTree
		Tlist
		let s:ide_viewer_opend = 1
	else
		NERDTreeClose
		TlistClose
		let s:ide_viewer_opend = 0
	endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD_tree setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set the window width
let g:NERDTreeWinSize = 23
" Set the window position
let g:NERDTreeWinPos = "right"
" Auto centre
let g:NERDTreeAutoCenter = 0
" Not Highlight the cursor line
let g:NERDTreeHighlightCursorline = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Taglist setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Split to the right side of the screen
let g:Tlist_Use_Left_Window = 1
" Set the window width
let g:Tlist_WinWidth = 30
" Sort by the order
let g:Tlist_Sort_Type = "order"
" Do not display the help info
let g:Tlist_Compact_Format = 1
" If you are the last, kill yourself
let g:Tlist_Exit_OnlyWindow = 1
" Do not close tags for other files
let g:Tlist_File_Fold_Auto_Close = 1
" Do not show folding tree
let g:Tlist_Enable_Fold_Column = 0
" Always display one file tags
let g:Tlist_Show_One_File = 1
" setting in trinity
set tags=tags; "ctags
"set autochdir "ctags cscope is not work smart

""""""""""""""""""""""""""""""
" lookupfile setting
""""""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 0     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
let g:LookupFile_DisableDefaultMap = 1
if filereadable("./filenametags")                "设置tag文件的名字
let g:LookupFile_TagExpr = '"./filenametags"'
endif

let s:lookup_file_opend = 0
function! LookupFileToggle()
	if s:lookup_file_opend == 0
		LookupFile
		let s:lookup_file_opend = winnr()
	else
        exec s:lookup_file_opend . ' wincmd q'
		let s:lookup_file_opend = 0
	endif
endfunction

""""""""""""""""""""""""""""""
" neocomplcache setting
""""""""""""""""""""""""""""""
let g:neocomplcache_enable_at_startup=1
" 设置代码提示窗口的颜色（默认为粉红色，如附图1,下面的设置的效果如附图2） 

""""""""""""""""""""""""""""""
" foldmethod
""""""""""""""""""""""""""""""
"set foldenable
"set foldlevel=100  " 启动vim时不要自动折叠代码
"set foldmethod=indent

""""""""""""""""""""""""""""""
" Most Recently Used (MRU)
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 100 


""""""""""""""""""""""""""""""
" ifdef
""""""""""""""""""""""""""""""
set syntax=c.ifdef.doxygen

""""""""""""""""""""""""""""""
" doxygen
""""""""""""""""""""""""""""""
"set syntax+=c.doxygen
let g:load_doxygen_syntax=1

""""""""""""""""""""""""""""""
" pathogen (before filetype)
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" normal setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set nocompatible   " VIM而不是VI
set history=500    " 历史记录500条
set fenc=utf-8     " 设置默认语言为8位unicode
filetype on        " 打开文件类型检测
filetype plugin on
filetype indent on
 
" 颜色设置.
set t_Co=256
colorscheme darkspectrum-256 " 主题
"colorscheme evening-256      " 主题
"colorscheme jellybeans       " 主题

syntax enable " 语法高亮
syntax on     " 语法高亮
set hls       " 查找文本高亮
 
"界面设置.
set ruler    " 显示当前位置
set number   " 显示行号
"set nonumber " 不显示行号
 
"格式设置.
set autoindent    " 自动缩进
set smartindent   " 智能缩进
set cindent       " C缩进
set tabstop=4     " 硬TAB
set softtabstop=4 " 软TAB
set shiftwidth=4  " 缩进空格数
"set expandtab     " 空格替换TAB
"set smarttab      " 智能TAB
 
set ignorecase smartcase
set showmatch   " 显示匹配
"set matchtime=5 " 1/10秒延迟
set hlsearch    " 高亮搜索
set incsearch   " 搜索中匹配
set nobackup    " 没有后缀~的备份文件

"set clipboard+=unnamed "与windows共享剪贴板

set autoread " 当文件在外部被修改时，自动重新读取
set mouse=a  " 在所有模式

set guifont=Monospace\ 11
set cursorline

"缩进线设置，这里你可以把“|”改为你喜欢的缩进线符号，推荐使用“:”或者“.”。这里要注意的是，缩进线只有对Tab缩进有效，而空格缩进无效
	set list
	set listchars=tab:\|\ ,trail:-
set scrolloff=3
"set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 记住上一次打开文件的位置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
" Execute file being edited with <Shift> + e:
map <buffer> <F9> :w<CR>:!/usr/bin/env python % <CR>

