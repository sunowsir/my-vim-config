" " ___ _   _ _ __   _____      _____(_)_ __( )___    __   _(_)_ __ ___  _ __ ___ 
" "/ __| | | | '_ \ / _ \ \ /\ / / __| | '__|// __|   \ \ / / | '_ ` _ \| '__/ __|
" "\__ \ |_| | | | | (_) \ V  V /\__ \ | |    \__ \    \ V /| | | | | | | | | (__ 
" "|___/\__,_|_| |_|\___/ \_/\_/ |___/_|_|    |___/     \_/ |_|_| |_| |_|_|  \___|
" "                                                                             
"
"


" 打开文件消除之前搜索产生的高亮
exec 'nohlsearch'


""""""""""""""""""""""""""" 设置 

" 设置vim下的shell为bash
set shell=/bin/bash

" 将<LEADER>键设置为空格
let mapleader=" "

"  高亮
syntax on

" 搜索词高亮
set hlsearch

" 搜索词输入同步高亮
set incsearch

" 搜索词忽略大小写
set ignorecase 

" 智能大小写
set smartcase 

" 行号
set number

" 相对行号
set relativenumber

" 光标线
set cursorline

" 换行显示　－－　使得字不会超出屏幕显示
set wrap 

" 状态栏显示命令
set showcmd

" tab 联想补全
set wildmenu

" 防止老旧的vi与vim某些操作不同导致的冲突
set nocompatible

" 文件识别
filetype on

" 为特定文件类型载入相关缩进文件
filetype indent on

" 载入文件类型插件
filetype plugin on

" 编码设置为utf-8
set encoding=utf-8

" 设置菜单语言为中文, 编码为utf-8
set langmenu=zh_CN.UTF-8

" 设置提示语言为中文, 编码为utf-8
language message zh_CN.UTF-8

set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

" 防止特殊符号无法正常显示
set ambiwidth=double

" 协调vim配色异常
let &t_ut=' '

" 根据文件中其他位置的缩进空格个数来决定一个tab是多少个空
set smarttab

" 每一行都和前一行的缩进量相同
set smartindent

" 自动缩进－当敲入回车，自动加入tab，若新行没有任何内容，tab自动删除
set autoindent

" 按照Ｃ语言语法进行自动缩进
set cindent

" 输入tab时自动转化为空格
set expandtab

" 设置缩进
" shiftwidth (sw) : 使用每层缩进的空格数。
" tabstop (ts):     编辑时一个TAB字符占多少个空格的位置。
set tabstop=4
set shiftwidth=4

" 敲入tab时实际占有的列数
set softtabstop=4

" 行尾空格显示
" set list
" set listchars=tab:▸\ ,trail:▫

" 光标移动到buffer的顶部和底部时保持3行距离  
set scrolloff=3

" 总是显示状态栏
set laststatus=2

" 自动切换当前目录
set autochdir

" 设置当文件被改动时自动载入
set autoread

"自动保存
set autowrite

"禁止生成临时文件
set nobackup

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 去掉输入错误的提示声音
set noeb

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1

" 智能补全
set completeopt=longest,menu


" 用缩进表示折叠
set foldmethod=indent

" 打开文件后默认展开所有折叠
set foldlevel=99

" 编辑时将所有 Tab 替换为空格。
" 该选项只在编辑时将 Tab 替换为空格，如果打开一个已经存在的文件，并不会将已有的 Tab 替换为空格。
" 如果希望进行这样的替换的话，可以使用这条命令“:retab”。
" set et

" 不在单词中间断行。
" 设置了这个选项后，如果一行文字非常长，无法在一行内显示完的话，
" 它会在单词与单词间的空白处断开，尽量不会把一个单词分成两截放在两个不同的行里。
set lbr

" 打开断行模块对亚洲语言支持。
" m 表示允许在两个汉字之间断行，即使汉字之间没有出现空格。
" B 表示将两行合并为一行的时候，汉字与汉字之间不要补空格。
" 该命令支持的更多的选项请参看用户手册。
set fo+=mB

" 显示括号配对情况。
" 打开这个选项后，当输入后括号(包括小括号、中括号、大括号) 的时候，
" 光标会跳回前括号片刻，然后跳回来，以此显示括号的配对情况。
set sm

" 指定在选择文本时，光标所在位置也属于被选中的范围。
" 如果指定 selection=exclusive 的话，可能会出现某些文本无法被选中的情况。
set selection=inclusive

" 当右键单击窗口的时候，弹出快捷菜单。
set mousemodel=popup

" set tw = n : 设置光标超过n列的时候折行。
" n = 0: 永不折行
set tw=0

" 回到上次打开文件光标所在位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

au BufRead,BufNewFile *.sh set filetype=sh
au BufRead,BufNewFile *.py set filetype=python
au BufRead,BufNewFile *.c set filetype=c
au BufRead,BufNewFile *.cc set filetype=c
au BufRead,BufNewFile *.cpp set filetype=cpp
au BufRead,BufNewFile *.c set filetype=c
au BufRead,BufNewFile *.h set filetype=cpp


""""""""""""""""""""""""""" 新文件自动插入标题



"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
		call setline(1,"\#!/bin/bash") 
		call append(line("."), "") 
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
	    call append(line(".")+1, "") 
	else 
		call setline(1, "/*************************************************************************") 
		call append(line("."), "	> File      : ".expand("%")) 
		call append(line(".")+1, "	> Author    : sunowsir") 
		call append(line(".")+2, "	> Mail      : sunowsir@163.com") 
		call append(line(".")+3, "	> Creation  : ".strftime("%c")) 
		call append(line(".")+4, " ************************************************************************/") 
		call append(line(".")+5, "")
	endif
	if expand("%:e") == 'cpp'
		call append(line(".")+6, "#include<iostream>")
		call append(line(".")+7, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include<stdio.h>")
		call append(line(".")+7, "")
	endif
	if expand("%:e") == 'h'
		call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
		call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
		call append(line(".")+8, "#endif")
	endif
	"新建文件后，自动定位到文件末尾
endfunc 

autocmd BufNewFile * normal G



""""""""""""""""""""""""""" 按键映射


" 将大写的j和k映射为5行5行的跳，为了快速阅览
noremap J 5j
noremap K 5k 

" 当已定位到搜索词的位置后，需要关闭搜索高亮，使用该快捷键
noremap <LEADER><CR> :nohlsearch<CR>

" 将s按键映射为无功能
map s <nop>

" 退出
map Q :q<CR>

" 使得更改后的vimrc立即生效
map R :source $MYVIMRC<CR>

" 普通模式下: 保存
map <C-j> :w<CR>

" 插入模式下: 退出插入模式
imap <C-j> <ESC>

" 选择模式下: 退出选择模式
vmap <C-j> <ESC>

" 选择模式下: 复制到外部(不知为何，有时候不好使)
vmap <C-c> "+y








""""""""""""""""""""""""""" 插件



call plug#begin('~/.vim/plugged')


Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'



" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
" Plug 'w0rp/ale'

" Auto Complete
Plug 'Valloric/YouCompleteMe'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'
Plug 'Raimondi/delimitMate'


" ALE 
Plug 'dense-analysis/ale'

" vim-gutentags
Plug 'ludovicchabant/vim-gutentags'


call plug#end()



"""""""""""""" 插件使用配置

" ===
" === snazzy
" ===
color snazzy
let g:SnazzyTransparent=1


" ===
" === NERDTree
" ===
map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ==
" == NERDTree-git
" ==
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" ===
" === You Complete ME
" ===
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

"YouCompleteMe
"配置默认文件路径
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_confirm_extra_conf = 0
set completeopt=longest,menu
"自动开启语义补全
let g:ycm_seed_identifiers_with_syntax = 1
"在注释中也开启补全
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"字符串中也开启补全
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
"开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files = 1
"开始补全的字符数
let g:ycm_min_num_of_chars_for_completion = 2
"补全后自动关闭预览窗口
let g:ycm_autoclose_preview_window_after_completion = 1
"禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
"整合UltiSnips的提示
let g:ycm_use_ultisnips_completer = 1
"在实现和声明之间跳转,并分屏打开
let g:ycm_goto_buffer_command = 'horizontal-split'
"与syntastic有冲突，建议关闭
let g:ycm_show_diagnostics_ui = 0
"let g:ycm_error_symbol = '>>'
"let g:ycm_warning_symbol = '>>'
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_echo_current_diagnostic = 0

let g:ycm_python_interpreter_path = "/usr/bin/python3"
let g:ycm_python_binary_path = "/usr/bin/python3"


" ===
" === ale
" ===
" let b:ale_linters = ['pylint']
" let b:ale_fixers = ['autopep8', 'yapf']


" ===
" === Taglist
" ===
map <silent> T :TagbarOpenAutoClose<CR>


" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'google-chrome'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'


" ===
" === vim-table-mode
" ===
map <LEADER>tm :TableModeToggle<CR>

" ===
" === Python-syntax
" ===
let g:python_highlight_all = 1
" let g:python_slow_sync = 0


" " ===
" " === vim-indent-guide
" " ===
" let g:indent_guides_guide_size = 1
" let g:indent_guides_start_level = 2
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_color_change_percent = 1
" silent! unmap <LEADER>ig
" autocmd WinEnter * silent! unmap <LEADER>ig
" ===
" === indentLine
" ===
let g:indentLine_char = '┊'


" ===
" === Goyo
" ===
map <LEADER>gy :Goyo<CR>



" ===
" === Undotree
" ===
let g:undotree_DiffAutoOpen = 0
map L :UndotreeToggle<CR>


" === ALE
" ===

let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '!'

let g:ale_linters_explicit = 1
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

"
let g:ale_linters = { 
            \ 'c': ['gcc'],
            \ 'cpp': ['g++'], 
            \ 'py': ['pylint'], 
            \ }

let g:ale_c_gcc_options = '-Wall -std=c11'
let g:ale_cpp_gcc_options = '-Wall -std=c++14'


" === 
" === vim-gutentags
" === 
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']






