" -----------------------------------------------------------------------------
" ===< plugin: protobuf >===
" *** *.proto file syntax ***
" -----------------------------------------------------------------------------
augroup filetype
au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

" -----------------------------------------------------------------------------
" ===< function: fileheader >===
" *** file header detail declare ***
" -----------------------------------------------------------------------------
"map <C-F> :call xzj_fileheader()<cr>
function Xzj_fileheader()
	call append(0,"/******************************************************************************")
	call append(1,"*    Copyright (C), ".strftime("%Y")." by CarrotX tech. All rights reserved.                *")
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

" -----------------------------------------------------------------------------
" ===< function: ifndef >===
" *** file header ifndef declare ***
" -----------------------------------------------------------------------------
"map <C-H> :call Xzj_ifndef_file()<cr>
function Xzj_ifndef_file()
	call append(10,"#ifndef ".expand("%:t:r")."_".expand("%:e"))
	call append(11,"#define ".expand("%:t:r")."_".expand("%:e"))
	call append(12,"")
	call append(13,"#endif // ".expand("%:t:r")."_".expand("%:e"))
endfunction
