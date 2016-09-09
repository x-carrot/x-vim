" *****************************************************************************
"    Copyright (C), 2016 by Carrot tech. All rights reserved.                 *
"    Filename:       cpp.vim
"    Author:         zhengjian.xie@gmail.com                                  *
"    Description:                                                             *
"    History:                                                                 *
"      <author>          <time>          <version>          <description>     *
"        Xzj        2016-06-10 11:40      V1.0.0                build         *
"                                                                             *
" ****************************************************************************/

" some mix keyword for myself use
" -------------------------------------------------------------------
syn keyword cppType x_space T T1 T2 iterator

" c++ highlight
" -------------------------------------------------------------------
syn keyword xzjClass	interface handler listener observer notifier receiver
syn keyword xzjSTLType	std npos endl vector list map stack string wstring fstream
syn keyword xzjSTLFunc  cout cin

syn keyword xzjProtocol _protocal _endprotocal _optional _required _confirmto _implement
syn keyword xzjProtocol _confirmto_base _protocal_func _protocal_funcs _endprotocal_funcs

syn match   xzjQClass  "\<Q[A-Z][a-zA-Z_0-9]*"
syn keyword xzjQAccess slots signals
syn keyword xzjQMacro Q_OBJECT

syn match xzjClass "\<db[A-Z][a-zA-Z_0-9]*"
syn match xzjClass "\<x[A-Z][a-zA-Z_0-9]*"
syn match xzjClass "\<xcl[A-Z][a-zA-Z_0-9]*"
syn match xzjClass "\<UI[A-Z][a-zA-Z_0-9]*"

syn match xzjTinyxml "\<Ti[A-Z][a-zA-Z_0-9]*"

" -------------------------------------------------------------------
hi xzjClass guifg=lightblue gui=bold,underline,italic

hi def link xzjSTLType xzjType
hi def link xzjSTLFunc xzjFunctions
hi def link xzjProtocol cppType

hi def link xzjQClass xzjClass
hi def link xzjQAccess cppAccess
hi def link xzjQMacro xzjDef
