" -------------------------------------------------------------------
syn keyword cppType x_space T T1 T2 iterator

" -------------------------------------------------------------------
syn keyword xzjClass	interface handler listener observer notifier receiver
syn keyword xzjSTL	std npos endl vector list map stack string wstring fstream
syn keyword xzjSTLFunc  cout cin

syn match xzjClass	"\<db[A-Z][a-zA-Z_0-9]*"
syn match xzjClass	"\<x[A-Z][a-zA-Z_0-9]*"
syn match xzjClass	"\<xcl[A-Z][a-zA-Z_0-9]*"
syn match xzjQClass	"\<Q[A-Z][a-zA-Z_0-9]*"
syn match xzjQUIClass	"\<UI[A-Z][a-zA-Z_0-9]*"
syn match xzjTinyxml	"\<Ti[A-Z][a-zA-Z_0-9]*"

" -------------------------------------------------------------------
hi xzjClass guifg=lightblue gui=bold,underline,italic

hi def link xzjSTL xzjType
hi def link xzjSTLFunc xzjFunctions
