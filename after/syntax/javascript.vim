" *****************************************************************************
"    Copyright (C), 2016 by CarrotX tech. All rights reserved.                *
"    Filename:       javascript.vim
"    Author:         zhengjian.xie@gmail.com                                  *
"    Description:                                                             *
"    History:                                                                 *
"      <author>          <time>          <version>          <description>     *
"        Xzj        2016-09-30 09:56      V1.0.0                build         *
"                                                                             *
" ****************************************************************************/

syn match xzjClass "\<x[A-Z][a-zA-Z_0-9]*"
syn match xzjFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match xzjFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*) ("me=e-3
syn match xzjFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1

hi xzjFunctions			guifg=#ffa0a0 gui=italic,bold
hi xzjClass guifg=lightblue gui=bold,underline,italic
