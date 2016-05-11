set nocompatible                               " 关闭Vim与Vi的兼容，反之: set compatible
set nobackup                                   " 去掉备份
set encoding=utf-8                             " 文件编码为utf8
set ignorecase                                 " 忽略大小写
set helplang=en                                " 帮助语言
set mouse=a                                    " 设置在哪些模式下使用鼠标功能，mouse=a 表示所有模式
set nowrap                                     " 不自动换行
set textwidth=120                              " 超过120字符自动换行
set autoindent                                 " 换行时自动缩进与上一行同样的缩进
set smartindent                                " 智能对齐方式
set cursorline                                 " 行高亮
set number                                     " 显示行号
set ruler                                      " 右下角显示当前光标位置，反之: set noruler
set history=100                                " 历史命令与历史查找模式个数为100
set showcmd                                    " 右下角显示未完成的命令
set cmdheight=1                                " 设置命令行的高度
set incsearch                                  " 输入过程中显示匹配点
set hlsearch                                   " 高亮显示搜索结果，反之: set nohlsearch
set nowrapscan                                 " 查找到文件尾或者头时，停止查找，默认是开启
set lcs=tab:>-,eol:$                           " tab以及结尾换行符显示, set list
set ai!                                        " 设置自动缩进
set expandtab                                  " 使用空格代替tab
set tabstop=4                                  " tab用4个空格代替
set softtabstop=4                              " tab用4个空格代替
set shiftwidth=4                               "
set foldcolumn=4                               " 设置折叠模式
"set foldopen=all                              " 光标遇到折叠，折叠就打开 
"set foldclose=all                             " 移开折叠时自动关闭折叠
"zf zo zc zd zr zm zR zM zn zi zN 
"依缩进折叠 
"   manual  手工定义折叠 
"   indent  更多的缩进表示更高级别的折叠 
"   expr    用表达式来定义折叠 
"   syntax  用语法高亮来定义折叠 
"   diff    对没有更改的文本进行折叠 
"   marker  对文中的标志折叠 
set foldmethod=syntax                          " 启动时不要自动折叠代码
set foldlevel=100                              " 依标记折叠

" -----------------------------------------------------------------------------
" ===<  plugin: nerdtree  >===
" *** 文件列表管理器 ***
" -----------------------------------------------------------------------------
"autocmd vimenter * NERDTree                   " 随vim开启而自动开启
map <C-n> :NERDTreeToggle<CR>                  " nerdtree触发快捷键
let g:NERDTreeDirArrowExpandable = '▸'         " 展开时图标
let g:NERDTreeDirArrowCollapsible = '▾'        " 收缩时图标

" -----------------------------------------------------------------------------
" ===<  plugin: minibufexpl >===
" *** buffer 管理器 ***
" -----------------------------------------------------------------------------
let g:miniBufExplMapCTabSwitchBufs = 1         " C-tab,C-shift-tab键切换buf
let g:miniBufExplMapWindowNavVim = 1           " C-h,j,k,l切换窗口焦点
let g:miniBufExplMapWindowNavArrows = 1        " C-箭头,切换窗口焦点
let g:miniBufExplModSelTarget = 1              " 

" -----------------------------------------------------------------------------
" ===< ctags & cscope  >===
" -----------------------------------------------------------------------------
set tags=tags

" -----------------------------------------------------------------------------
" ===<  plugin: taglist  >===
" ***  标签查看/跳转管理器 ***
" -----------------------------------------------------------------------------
let Tlist_Show_One_File = 1                    " 只显示一个文件，其他文件收缩
let Tlist_Exit_OnlyWindow = 1                  " 只存在taglist窗口时，退出vim
let Tlist_Use_Right_Window = 1                 " 将taglist放在vim的右边
let Tlist_Show_Menu = 1                        " 显示菜单
let Tlist_File_Fold_Auto_Close = 1             " 自动折叠
"let Tlist_Use_Horiz_Window = 1                " 使用水平窗口

" -----------------------------------------------------------------------------
" ===<  plugin: auto-pairs  >===
" *** 自动补全成对符号: 括号、大括号、引号等等 ***
" -----------------------------------------------------------------------------
" 默认配置即可，如需修改请参见 auto-paris 文档


" -----------------------------------------------------------------------------
" ===<  plugin: cSyntaxAfter  >===
" *** 高亮符号: 括号、大括号、＋、－、＊等等 ***
" -----------------------------------------------------------------------------
" 临时配置,后续在 after/syntax 中加入自定义的语法高亮后，去掉相应类型
autocmd! FileType cpp,java,php,js call CSyntaxAfter()

" -----------------------------------------------------------------------------
" ===<  plugin: indentLine  >===
" *** 高亮符号: 括号、大括号、＋、－、＊等等 ***
" -----------------------------------------------------------------------------
let g:indentLine_color_term = 239              " 终端显示颜色
let g:indentLine_color_gui = '#ff0000'         " gvim显示颜色
"let g:indentLine_char = '|'                   " 缩进显示字符，使用插件自带
"let g:indentLine_concealcursor = 'vc'         " 去掉,必须
"let g:indentLine_conceallevel = 0             " 去掉,必须
let g:indentLine_enabled = 1                   " 默认开启

" -----------------------------------------------------------------------------
" ===<  plugin: doxygen  >===
" *** doxygen comment tool ***
" -----------------------------------------------------------------------------
" let g:DoxygenToolkit_commentType="C++"       " 设置注释语言类型
let g:load_doxygen_syntax=1                    " 自动启用doxygen
let g:DoxygenToolkit_briefTag_pre="@brief   "  " 概要关键字
let g:DoxygenToolkit_paramTag_pre="@param   "  " 参数关键字
let g:DoxygenToolkit_returnTag="@return   "    " 返回关键字
let g:DoxygenToolkit_blockHeader="----------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------" 
let g:DoxygenToolkit_authorName="zhengjian.xie@gmail.com" 
let g:DoxygenToolkit_licenseTag="Copyright (C) by x-Carrot tech. All rights reserved."

" -----------------------------------------------------------------------------
" ===<  plugin: vim-markdown & tabular >===
" *** markdown 语法高亮 ***
" -----------------------------------------------------------------------------
let g:vim_markdown_folding_disabled = 1        " 关闭markdown折叠
let g:vim_markdown_folding_style_pythonic = 1  " 折叠风格
let g:vim_markdown_folding_level = 6           " 折叠级数(1 ~ 6)
let g:vim_markdown_no_default_key_mappings = 1 " 关闭默认按键映射
let g:vim_markdown_toc_autofit = 1             " 允许toc自动适应
let g:vim_markdown_emphasis_multiline = 0      " 强制一行显示
let g:vim_markdown_conceal = 0                 " 使用vim自带conceal
let g:vim_markdown_math = 1                    " LaTeX math
