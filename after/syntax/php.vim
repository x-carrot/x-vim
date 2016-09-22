" *****************************************************************************
"    Copyright (C), 2016 by CarrotX tech. All rights reserved.                *
"    Filename:       php.vim
"    Author:         zhengjian.xie@gmail.com                                  *
"    Description:                                                             *
"    History:                                                                 *
"      <author>          <time>          <version>          <description>     *
"        Xzj        2016-09-09 01:14      V1.0.0                build         *
"                                                                             *
" ****************************************************************************/

syntax clear phpMethodsVar

" keyword matchs
" -------------------------------------------------------------------
syn match xzjFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2 containedin=phpRegion
syn match xzjFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*) ("me=e-3 containedin=phpRegion
syn match xzjFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1 containedin=phpRegion

syn match xzjClass "\<x[A-Z][a-zA-Z_0-9]*" containedin=phpRegion

syn match xzjDef "\<kdef[A-Z][a-zA-Z_0-9]*" containedin=phpRegion
syn match xzjDef "\<k[A-Z][a-zA-Z_0-9]*" containedin=phpRegion

" keyword colors
" -------------------------------------------------------------------
hi phpFunctions			guifg=#ffa0a0 gui=underline,bold
hi xzjFunctions         guifg=#ffa0a0 gui=italic,bold
hi xzjClass             guifg=lightblue gui=bold,underline,italic
hi xzjDef               guifg=darkyellow gui=italic
