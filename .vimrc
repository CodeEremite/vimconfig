" --------------------------------------------
" Maintainer:	rob  <codefighter@foxmail.com>
"--------------------------------------------
execute pathogen#infect()
syntax on
filetype plugin indent on

"editor settings {{{
set nocompatible
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set history=500
set showcmd                           " show typed command in status bar
set backspace=indent,eol,start
set nowrap                            " dont wrap lines
set number                            "显示行号
"set relativenumber
set report=0                          " always report number of lines changed
set backspace=indent,eol,start        " More powerful backspacing
set t_Co=256                          " Explicitly tell vim that the terminal has 256 colors
set mouse=a                           " use mouse in all modes
set showmatch                         "代码匹配
set autoread                          "文件在vim外修改过，自动重新读入“
"}}}
"Default Indentation {{{
set autoindent                        "自动缩进
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"}}}
"Search settings {{{
set incsearch                         " do incremental searching
set ignorecase                        "检索时忽略大小写
set hlsearch                          "高亮显示匹配项
"}}}
"Statusline settings {{{
set laststatus=2                      "始终显示状态行
set statusline=%f\ %m%r%y                          "文件名 编辑状态 文件类型
set statusline+=%=                                 "格式控制从右边开始排列
set statusline+=%{&ff}                             "文件系统(DOS UNIX)
set statusline+=\ %{''.(&fenc!=''?&fenc:&enc).''}  "文件编码
set statusline+=\ Row:%l/%L(%p%%)\ Col:%c          "光标位置
"}}}
"Colorscheme Setting {{{
set background=dark
set cursorline cursorcolumn
if has('gui_running')
    set guioptions-=T             "去掉gvim工具栏
    set guioptions-=L             "去掉gvim左滚动条
    set guioptions-=r             "去掉gvim右滚动条
    set guioptions-=b             "去掉gvim底部滚动条
    colorscheme solarized
   " set showtabline=2
else
    colorscheme molokai
endif
if has("gui_gtk2")
    set guifont=DejaVu\ Sans\ Mono\ 11
    set columns=140
    set lines=40
elseif has("gui_macvim")
    set guifont=DejaVu_Sans_Mono:h11
    set columns=180
    set lines=60
elseif has("gui_win32")
    set guifont=DejaVu_Sans_Mono:h11
end
augroup basicsetting
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END
"}}}
"设置插件NERDTree{{{
"当vim打开时自动打开nerdtree,当只剩nerdtree时退出vim
augroup NERDTreeConfig
    autocmd!
    autocmd vimenter * NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")) | q | endif
augroup END
"}}}
"设置插件taglist {{{
let Tlist_Show_One_File=1              "只显示当前文件的taglist
let Tlist_Exit_OnlyWindow=1            "如果taglist是最后一个窗口，则退出
let Tlist_Use_Right_Window=1           "在右侧窗口显示taglist
let Tlist_GainFocus_On_ToggleOpen=1    "打开taglist时，光标保留在taglist中
let Tlist_Ctags_Cmd='/usr/bin/ctags'   "设置ctags命令的位置
"}}}
" 设置插件vim-markdown {{{
" let g:markdown_fenced_languages=['html','python','bash=sh']
" }}}
" keybindings for plugin toggle{{{
nnoremap <F2> :NERDTreeMirror<CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :Tlist<CR>           
nnoremap <F4> :GundoToggle<cr>
" }}}
nnoremap <leader>ev :vsplit$MYVIMRC<cr>
nnoremap <leader>sv :source$MYVIMRC<cr>
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

inoremap jk <esc>
inoremap <esc> <nop>
iabbrev @@ codefighter@foxmail.com

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

