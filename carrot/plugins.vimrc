" *****************************************************************************
"    Copyright (C), 2016 ~ 2017 by x-Carrot tech. All rights reserved.        *
"    FileName:    plugins.vimrc
"    Author:      zhengjian.xie@gmal.com                                      *
"    Description: vim plugins manager config file                             *
"    History:                                                                 *
"      <author>          <time>          <version>          <description>     *
"        Xzj        2016-04-14 10:30      V1.0.0                build         *
"                                                                             *
" ****************************************************************************/
set nocompatible                    "必须,关闭vim与vi的兼容
filetype off                        "必须,关闭文件类型检测

if g:unix
    set rtp+=~/.vim/bundle/Vundle.vim/
    call vundle#begin()
else
    set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
    call vundle#begin('$VIM/vimfiles/bundle/Vundle.vim')
endif

Plugin 'VundleVim/Vundle.vim'        " 必须,启用vundle
Plugin 'scrooloose/nerdtree'         " nerdtree
Plugin 'minibufexpl.vim'             " minibuffer
Plugin 'taglist.vim'                 " taglist
Plugin 'jiangmiao/auto-pairs'        " auto-pairs, 自动补全()/{}/''等
Plugin 'cSyntaxAfter'                " csyntaxAfter, 高亮运算符与括号等
Plugin 'Yggdroot/indentLine'         " indentLine, 缩进显示，代码风格更好看
Plugin 'DoxygenToolkit.vim'          " doxygen 注释代码工具
Plugin 'a.vim'                       " C / H
Plugin 'Shougo/neocomplete.vim'      " auto complete

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'     " markdown syntax highlight

Plugin 'OmniCppComplete'             " c/c++ auto complete
Plugin 'SuperTab'                    " auto complete when TAB pressed

Plugin 'othree/html5.vim'            " html5 omnicomplete + syntax + indent

call vundle#end()                    " 必须
filetype plugin indent on            " 必须,加载vim自带文件类型语法检测
