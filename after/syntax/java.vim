" *****************************************************************************
"    Copyright (C), 2016 by CarrotX tech. All rights reserved.                *
"    Filename:       java.vim
"    Author:         zhengjian.xie@gmail.com                                  *
"    Description:                                                             *
"    History:                                                                 *
"      <author>          <time>          <version>          <description>     *
"        Xzj        2016-09-05 11:10      V1.0.0                build         *
"                                                                             *
" ****************************************************************************/

" clear default syntax highlight by VIM
syntax clear javaParenT javaParenT1 javaParenT2 javaParenError

" keyword matchs
" -------------------------------------------------------------------
syn match xzjFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match xzjFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*) ("me=e-3
syn match xzjFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1

syn match xzjClass "\<x[A-Z][a-zA-Z_0-9]*"
syn match xzjClass "\<UI[A-Z][a-zA-Z_0-9]*"

syn keyword xzjJAVApackage java lang
syn keyword xzjJAVAClass String System out

" keyword colors
" -------------------------------------------------------------------
hi xzjFunctions			guifg=#ffa0a0 gui=italic,bold
hi xzjType              guifg=lightblue gui=italic
hi xzjClass             guifg=lightblue gui=bold,italic

hi def link xzjJAVAClass xzjClass
hi def link xzjJAVApackage xzjType
