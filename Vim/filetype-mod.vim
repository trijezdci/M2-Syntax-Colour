" Vim disambiguation function for .mod files
" Author: B.Kowarsch <trijezdci@com.liamg>
" Last change: 2016 Aug 12

" Installation:
"
" open file filetype.vim in the Vim runtime directory
" search for:
"| Modsim III (or LambdaProlog)
"| au BufNewFile,BufRead *.mod
"|   \ if getline(1) =~ '\<module\>' |
"|   \   setf lprolog |
"|   \ else |
"|   \   setf modsim3 |
"|   \ endif
" and replace it with the code below:

" ----------------------------------------------------
" THE FOLLOWING CODE IS LICENSED UNDER THE VIM LICENSE
" see https://github.com/vim/vim/blob/master/LICENSE
" ----------------------------------------------------

" *.mod : LambdaProlog, Modsim III or Modula-2
au BufNewFile,BufRead *.mod call s:FTmod()

func! s:FTmod()
  " check first line for LambdaProlog module header
  if getline(1) =~ '\<module\>'
    setf lprolog
    return
  endif
  " no LambdaProlog module header found, search for Modula-2 dialect tag
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
  " no Modula-2 dialect tag found, search for Modula-2 module header
  let n = 1
  while n < 100
    if getline(n) =~ '\<MODULE\>'
      if exists("g:modula2_default_dialect") && 
        \ g:modula2_default_dialect =~ 'm2pim\|m2iso\|m2r10'
        exe 'setf ' . g:modula2_default_dialect
      else
        setf m2pim
      endif
      return
    endif
    let n = n + 1
  endwhile
  " no module headers and no dialect tag found, default to Modsim III
  setf modsim3
endfunc

" then search for:
"| Modula 2 ...
" and replace the section with the code below:

" ----------------------------------------------------
" THE FOLLOWING CODE IS LICENSED UNDER THE VIM LICENSE
" see https://github.com/vim/vim/blob/master/LICENSE
" ----------------------------------------------------

" Classic Modula-2 (.DEF, .MOD)
au BufNewFile,BufRead *.DEF,*.MOD       	setf m2pim
" Suffix .def is ambiguous and resolved by function FTdef().
" Suffix .mod is ambiguous and resolved by function FTmod().
" Suffixes .m2, .md and .mi are non-standard and have been removed.
