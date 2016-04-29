" *****************************************************************************
"    Copyright (C), 2016 ~ 2017 by x-Carrot tech. All rights reserved.        *
"    FileName:    .vimrc
"    Author:      zhengjian.xie@gmal.com                                      *
"    Description: vim main config file                                        *
"    History:                                                                 *
"      <author>          <time>          <version>          <description>     *
"        Xzj        2016-04-14 10:00      V1.0.0                build         *
"                                                                             *
" ****************************************************************************/
#ifndef .vimrc_
#define .vimrc_

#endif // .vimrc_

" ----------------------------------------------------------------------------
" ===<  检测运行环境  >===
" ----------------------------------------------------------------------------
let g:windows = 0
let g:unix = 0
let g:gui = 0

if ( has("win32") || has("win64") || has("win95") || has("win16") )
    let g:windows = 1
else
    let g:unix = 1
endif

if ( has("gui_running") )
    let g:gui = 1
endif

" --------------------------------------------------------------------------
" ===<  配置  >===
" ----------------------------------------------------------------------------
colorscheme desert                  " 主题:暗黑色
winpos 180 100                      " 启动时窗口位置
set lines=40 columns=120            " 启动时窗口宽高

" 隐藏菜单栏、工具栏、滚动条
if g:gui
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
endif

source ~/.vim/carrot/plugins.vimrc
source ~/.vim/carrot/basic.vimrc
source ~/.vim/carrot/ccpp.vimrc
source ~/.vim/carrot/java.vimrc
source ~/.vim/carrot/php.vimrc
source ~/.vim/carrot/carrot.vim

"map <C-F> :call xzj_fileheader()<cr>
function Xzj_fileheader()
	call append(0,"/******************************************************************************")
	call append(1,"*    Copyright (C), ".strftime("%Y")." by Carrot tech. All rights reserved.          *")
	call append(2,"*    Filename:       ".expand("%:t"))
	call append(3,"*    Author:         zhengjian.xie@gmail.com                                  *")
	call append(4,"*    Description:                                                             *")
	call append(5,"*    History:                                                                 *")
	call append(6,"*      <author>          <time>          <version>          <description>     *")
	call append(7,"*        Xzj        ".strftime("%Y-%m-%d %H:%M")."      V1.0.0"."                build         *")
	call append(8,"*                                                                             *")
	call append(9,"******************************************************************************/")
	echohl WarningMsg | echo "Adding file header sucess." | echohl None
endfunction

"map <C-H> :call Xzj_ifndef_file()<cr>
function Xzj_ifndef_file()
	call append(10,"#ifndef ".expand("%:t:r")."_".expand("%:e"))
	call append(11,"#define ".expand("%:t:r")."_".expand("%:e"))
	call append(12,"")
	call append(13,"#endif // ".expand("%:t:r")."_".expand("%:e"))
endfunction
