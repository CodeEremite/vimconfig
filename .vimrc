" Maintainer:	rob  <codefighter@foxmail.com>
set nocompatible
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set history=50		" keep 50 lines of command line history
"my configuration
syn on

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent  "自动缩进
set showmatch   "代码匹配

set number      "显示行号
set ruler     	" show the cursor position all the time
set showcmd	    " display incomplete commands
set cursorline  "为光标所在行加下划线
set autoread    "文件在vim外修改过，自动重新读入“
set laststatus=2 "总是显示状态行

set incsearch		" do incremental searching
set ignorecase  "检索时忽略大小写
set hls         "高高显示匹配项
set foldmethod=syntax "代码折叠

set fileencodings=utf-8,gbk "使用utf-8或gbk打开文件

"插件管理,设置pathogen
"pathogen{
execute pathogen#infect()
filetype plugin indent on
"}

"设置NERDTree快捷键
"NERDTree{
nnoremap <leader>tr :NERDTreeMirror<CR>
nnoremap <leader>tr :NERDTreeToggle<CR>
"}

"配置taglist
"taglist{
let Tlist_Show_One_File=1               "只显示当前文件的taglist
let Tlist_Exit_OnlyWindow=1             "如果taglist是最后一个窗口，则退出
let Tlist_Use_Right_Window=1            "在右侧窗口显示taglist
let Tlist_GainFocus_On_ToggleOpen=1     "打开taglist时，光标保留在taglist中
let Tlist_Ctags_Cmd='/usr/bin/ctags'   "设置ctags命令的位置
nnoremap <leader>tl :Tlist<CR>           
"}

"设置powerline状态栏主题
"powerline{
set guifont=PowerlineSymbols\for\Powerline
set t_Co=256
let g:Powerline_symbols='fancy'
"}
