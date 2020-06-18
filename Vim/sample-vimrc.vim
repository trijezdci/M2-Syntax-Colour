" Example startup script for Vim
" ~/.vimrc on Posix systems, or ~/_vimrc on Windows

" *** set appearance parameters ***

" show line numbers
set nu
" highlight cursor line
set cul
" set line spacing
set lsp=2
" always show status bar
set ls=2
" set display options for status bar
set stl=%f%(\ %y%)%(\ %m%)%<%=%-12.(%l,%c%V%)\ %P

" *** set Modula-2 parameters ***

" set the default dialect (in case it cannot be detected)
let g:modula2_default_dialect = 'm2r10'

" recognise lowline in identifiers
let g:m2pim_allow_lowline = 0
let g:m2iso_allow_lowline = 1
let g:m2r10_allow_lowline = 1

" render octal literals as errors
let g:m2pim_disallow_octals = 1
let g:m2iso_disallow_octals = 1

" render synonyms (@, & and ~) as errors
let g:m2pim_disallow_synonyms = 1
let g:m2iso_disallow_synonyms = 1

" END OF FILE