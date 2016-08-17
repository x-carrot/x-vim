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
syn keyword xzjFunctions xProc

syn keyword cType __xline__ __xfunc__ __wfunc__ __xfile__ __wfile__
syn match xzjType "\<st[A-Z][a-zA-Z_0-9]*"
syn match xzjType "\<pst[A-Z][a-zA-Z_0-9]*"
syn match xzjType "\<em[A-Z][a-zA-Z_0-9]*"
syn match xzjType "\<pem[A-Z][a-zA-Z_0-9]*"

syn match xzjEnum "\<k[A-Z][a-zA-Z_0-9]*"
syn match xzjEnum "\<XENUM_[A-Z][a-zA-Z_0-9]*"
syn match xzjDef  "\<XDEF_[A-Z][a-zA-Z_0-9]*"
syn match xzjDef  "\<XMSG_[A-Z][a-zA-Z_0-9]*"
syn match xzjDef  "\<MSG_[A-Z][a-zA-Z_0-9]*"
syn keyword xzjDef X_E X_LN2 X_LN10 X_PI X_PI_2 X_PI_4 X_SQRT2 X_LOG2_BASE10
syn keyword xzjDef X_MAXPATH X_MAXNAME X_MAXNAME2 X_MAXUINT16 X_MAXUINT32 X_MAXUINT64

syn keyword xzjGlibType gboolean gpointer guchar gchar gint guint
syn match xzjGlibType "\<G[A-Z][a-zA-Z_0-9]*"
syn match xzjGlibType "\<GDBus[A-Z][a-zA-Z_0-9]*"
syn match xzjGlibType "\<Gst[A-Z][a-zA-Z_0-9]*"

syn keyword xzjThreadType pthread_mutex_t

syn keyword xzjBonjourType DNSServiceRef DNSServiceFlags DNSServiceProtocol DNSServiceErrorType

syn keyword xzjOS OS_WIN OS_LINUX OS_APPLE X_EXPORT X_EXPORT_API
syn keyword Boolean yes no nil
syn keyword xzjType xVoid xChar xWChar xUChar xBool xByte xInt xUint xShort xUShort xLong xUlong xFloat xDouble
syn keyword xzjType xInt8 xUint8 xInt16 xUint16 xInt32 xUint32 xInt64 xUint64 xOffset xSize_t
syn keyword xzjpType xPointer xCPointer xpChar xpCChar xpUChar xpCUChar xpBool xpByte xpCByte
syn keyword xzjpType xpInt xpShort xpLong xpUint xpInt8 xpUint8 xpInt16 xpUint16 xpInt32 xpUint32
syn keyword xzjpType xpFloat xpDouble xpOffset xpSize_t

" keyword colors
" -------------------------------------------------------------------
hi xzjFunctions			guifg=#ffa0a0 gui=italic,bold
hi xzjType			guifg=lightblue gui=underline,italic
hi xzjOS			guifg=#ffa0a0 gui=bold
hi xzjEnum                      guifg=lightgreen gui=bold

hi def link xzjpType xzjType
hi def link xzjGlibType xzjType
hi def link xzjThreadType xzjType
hi def link xzjBonjourType xzjType
hi def link xzjDef xzjEnum

" ----------------------------------------------------------------------------
" 高亮运算符等 cSyntaxAfter
"if exists("*CSyntaxAfter") call CSyntaxAfter() endif
"syntax match longOperators "++\|--"
"hi longOperators guifg=green guibg=red
