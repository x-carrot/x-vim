" -------------------------------------------------------------------
syn keyword xzjClass	interface handler listener observer notifier receiver
syn match xzjClass	"\<db[A-Z][a-zA-Z_0-9]*"
syn match xzjClass	"\<x[A-Z][a-zA-Z_0-9]*"
syn match xzjQClass	"\<Q[A-Z][a-zA-Z_0-9]*"
syn match xzjQUIClass	"\<UI[A-Z][a-zA-Z_0-9]*"
syn match xzjTinyxml	"\<Ti[A-Z][a-zA-Z_0-9]*"

" -------------------------------------------------------------------
hi xzjClass guifg=lightblue gui=bold,underline,italic
