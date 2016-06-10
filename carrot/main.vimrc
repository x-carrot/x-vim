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

syntax enable                       " 开启语法高亮
syntax on
