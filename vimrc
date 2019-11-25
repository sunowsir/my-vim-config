"   
"   
"                          _                    
"    _ __ ___  _   ___   _(_)_ __ ___  _ __ ___ 
"   | '_ ` _ \| | | \ \ / / | '_ ` _ \| '__/ __|
"   | | | | | | |_| |\ V /| | | | | | | | | (__ 
"   |_| |_| |_|\__, | \_/ |_|_| |_| |_|_|  \___|
"              |___/                            
"   
"
"

"""""""""""""""""""""""""""  启动执行

exec 'nohlsearch'


""""""""""""""""""""""""""" 设置 

set shell=/bin/bash

let mapleader=" "

"  高亮
syntax on

" 搜索词高粱
set hlsearch

" 搜索词输入同步高粱
set incsearch

" 搜索词忽略大小写
set ignorecase 

" 只能大小写
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

" 载入文件类型插件
filetype indent on

" 为特定文件类型载入相关缩进文件
filetype plugin on

filetype plugin indent on

" 编码设置为utf-8
set encoding=utf-8

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

" 一个tab键所占的列数
set tabstop=4

" reindent时缩进的列数
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

"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu


" 用缩进表示折叠
set foldmethod=indent

" 打开文件后默认展开所有折叠
set foldlevel=99


set sw=4
set ts=4
set et
set lbr
set fo+=mB
set sm
set selection=inclusive
set mousemodel=popup
set tw=0



" 回到上次打开文件光标所在位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif




""""""""""""""""""""""""""" 按键映射


noremap J 5j
noremap K 5k 
noremap <LEADER><CR> :nohlsearch<CR>


map s <nop>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map <C-j> :w<CR>

imap <C-j> <ESC>

vmap <C-j> <ESC>
vmap <C-C> "+y








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
Plug 'w0rp/ale'

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
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
let g:ycm_python_interpreter_path = "/bin/python3"
let g:ycm_python_binary_path = "/bin/python3"


" ===
" === ale
" ===
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']


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

let g:ale_linters = { 'c': ['gcc'], 'cpp': ['gcc'] }

let g:ale_c_gcc_options = '-Wall -std=c99'
let g:ale_cpp_gcc_options = '-Wall -std=c++14'








