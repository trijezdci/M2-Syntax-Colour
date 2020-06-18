" Vim disambiguation function for .def files
" Author: B.Kowarsch <trijezdci@ofni.2-aludom>
" Last change: 2016 Aug 12

" Installation:
"
" open file filetype.vim in the Vim runtime directory
" search for:
"| " Microsoft Module Definition
"| au BufNewFile,BufRead *.def    setf def
" and replace these two lines with the code below:

" Microsoft Module Definition or Modula-2
au BufNewFile,BufRead *.def call s:FTdef()

func! s:FTdef()
  " search for Modula-2 dialect tag
  let n = 1
  while n < 100
    let line = getline(n)
    if line =~ '(\*!m2pim\(+[a-z][a-z0-9]*\)\?\*)'
      setf m2pim
      return
    endif
    if line =~ '(\*!m2iso\(+[a-z][a-z0-9]*\)\?\*)'
      setf m2iso
      return
    endif
    if line =~ '(\*!m2r10\(+[a-z][a-z0-9]*\)\?\*)'
      setf m2r10
      return
    endif
    let n = n + 1
  endwhile
  " no dialect tag found, search for module header
  let n = 1
  while n < 100
    let line = getline(n)
    if line =~ '\<DEFINITION\>\s\<MODULE\>'
      if exists("g:modula2_default_dialect") &&
        \ g:modula2_default_dialect =~ 'm2pim\|m2iso\|m2r10'
        exe 'setf ' . g:modula2_default_dialect
      else
        setf m2pim
      endif
      return
    endif
    if line =~ '\<BLUEPRINT\>'
      setf m2r10
      return
    endif
    let n = n + 1
  endwhile
  " no dialect tag and no module header found, default to MSFT
  setf def
endfunc