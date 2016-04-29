
set mouse=a
set number
set ruler
set lcs=tab:>-,eol:$

set expandtab                                  "  使用空格代替tab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set ignorecase

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
