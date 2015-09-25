"wangchuan


"设置代码高亮
syntax enable
syntax on
filetype plugin indent on

"自动行号
set number

"用VI兼容模式
set nocompatible

"Vim 的内部编码
set encoding=utf-8

"Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)
set termencoding=utf-8

"Vim 当前编辑的文件在存储时的编码
set fileencoding=utf-8

"Vim 打开文件时的尝试使用的编码
set fileencodings=ucs-bom,utf-8,gbk,default,latin1

"设置字体
if has("gui_running")
	set guifont=Consolas:h9
endif

"格式化高亮
syntax on

"显示行号
set nu

"括号匹配
set showmatch

"自动检测文件类型
filetype plugin indent on

"在缩进和遇到 Tab 键时使用空格替代
set expandtab

"根据文件类型设置缩进格式
au FileType html,python,vim,javascript setl shiftwidth=2
au FileType html,python,vim,javascript setl tabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4

" 启动vim时不要自动折叠代码
set foldlevel=100

" 自动对齐
set ai

"依据上面的对起格式
set si
set smarttab
set wrap
set lbr
set tw=0
set foldmethod=syntax

"设定窗口颜色
let g:wombat_termcolors=256
set t_Co=256
colorscheme wombat256

"自动补全php
filetype plugin on                                             
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"代码折叠
set foldmethod=indent

"别名, 利用别名修改一些内置命令
cabbrev tr NERDTree

" 配置文件.vimrc更改后自动重新载入使设置生效
autocmd! bufwritepost .vimrc source ~/.vimrc
