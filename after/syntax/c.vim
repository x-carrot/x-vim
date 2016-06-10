" *****************************************************************************
"    Copyright (C), 2016 ~ 2017 by x-Carrot tech. All rights reserved.        *
"    FileName:    c.vim
"    Author:      zhengjian.xie@gmal.com                                      *
"    Description:                                                             *
"    History:                                                                 *
"      <author>          <time>          <version>          <description>     *
"        Xzj        2016-04-14 13:00      V1.0.0                build         *
"                                                                             *
" ****************************************************************************/

" keyword matchs
" -------------------------------------------------------------------
syn match xzjFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match xzjFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*) ("me=e-3
syn match xzjFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
syn match xzjType "\<st[A-Z][a-zA-Z_0-9]*"
syn match xzjType "\<pst[A-Z][a-zA-Z_0-9]*"
syn match xzjType "\<em[A-Z][a-zA-Z_0-9]*"
syn match xzjType "\<pem[A-Z][a-zA-Z_0-9]*"

syn match xzjGlibType "\<G[A-Z][a-zA-Z_0-9]*"

syn keyword xzjOS OS_WIN OS_LINUX OS_APPLE X_EXPORT X_EXPORT_API
syn keyword xzjOS X_MAXPATH
syn keyword Boolean yes no nil
syn keyword xzjType xVoid xChar xUChar xBool xByte xInt xUint xFloat xDouble
syn keyword xzjType xInt8 xUint8 xInt16 xUint16 xInt32 xUint32 xInt64 xUint64
syn keyword xzjpType xPointer xCPointer xpChar xpCChar xpUChar xpCUChar xpBool xpByte
syn keyword xzjpType xpInt xpUint xpInt8 xpUint8 xpInt16 xpUint16 xpInt32 xpUint32
syn keyword xzjpType xpFloat xpDouble

" keyword colors
" -------------------------------------------------------------------
hi xzjFunctions			guifg=#ffa0a0 gui=italic,bold
hi xzjType			guifg=lightblue gui=underline,italic
hi xzjOS			guifg=#ffa0a0 gui=bold

hi def link cType xzjType
hi def link xzjpType xzjType
hi def link xzjGlibType xzjType

" ----------------------------------------------------------------------------
" 高亮运算符等 cSyntaxAfter
"if exists("*CSyntaxAfter") call CSyntaxAfter() endif
"syntax match longOperators "++\|--"
"hi longOperators guifg=green guibg=red
