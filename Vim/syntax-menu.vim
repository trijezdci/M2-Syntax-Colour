" Adding a Modula-2 menu to the Vim Syntax menu

" In the Vim runtime directory open file makemenu.vim,
" then search for:
"| SynMenu M.Modula\ 2:modula2
" and replace it with the following code:

" ----------------------------------------------------
" CODE IN THIS FILE IS LICENSED UNDER THE VIM LICENSE
" see https://github.com/vim/vim/blob/master/LICENSE
" ----------------------------------------------------

SynMenu M.Modula-2.R10\ (2010):m2r10
SynMenu M.Modula-2.ISO\ (1994):m2iso
SynMenu M.Modula-2.PIM\ (1985):m2pim

" For consistency in spelling, also replace line
"| SynMenu M.Modula\ 3:modula3
" with:
SynMenu M.Modula-3:modula3


" Then in the Vim runtime directory open file synmenu.vim,
" search for:
"| an 50.70.350 &Syntax.M.Modula\ 2 :cal SetSyn("modula2")<CR>
" and replace it with the following code:

an 50.70.350 &Syntax.M.Modula-2.PIM\ (1985) :cal SetSyn("m2pim")<CR>
an 50.70.351 &Syntax.M.Modula-2.ISO\ (1994) :cal SetSyn("m2iso")<CR>
an 50.70.352 &Syntax.M.Modula-2.R10\ (2010) :cal SetSyn("m2r10")<CR>

" Here again, for consistent spelling, also replace line
|" an 50.70.360 &Syntax.M.Modula\ 3 :cal SetSyn("modula3")<CR>
" with:
|" an 50.70.360 &Syntax.M.Modula-3 :cal SetSyn("modula3")<CR>


" NB: the numbers 50.70.350/360 may be different in your installation
