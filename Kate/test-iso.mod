(* ISO Modula-2 Syntax highlighting test *)

(* dialect tags *)

(*!m2iso*)


(* pragmas *)

<*foo*>


(* foldable comments *)

(* foo
   bar
   baz *)


(* built-in constants *)

BITSPERLOC BITSPERWORD FALSE INTERRUPTIBLE NIL TRUE UNINTERRUPTIBLE


(* built-in types *)

ADDRESS BOOLEAN BITSET CARDINAL COMPLEX CHAR INTEGER LOC LONGCOMPLEX LONGREAL
PROC PROTECTION WORD REAL


(* built-in procedures *)

ABS ADDADR ADR ALLOCATE CAP CAST CHR CMPLX DEALLOCATE DEC DIFADR DISPOSE EXCL
FLOAT HALT HIGH INC INCL INT LENGTH LFLOAT MAKEADR MAX MIN NEW ODD ORD RE
ROTATE SHIFT SIZE SUBADR SYSTEM TRUNC TSIZE VAL


(* reserved words *)

AND ARRAY BEGIN BY CASE CONST DEFINITION DIV DO ELSE ELSIF END EXIT EXPORT
FINALLY FOR FORWARD FROM IF IMPLEMENTATION IMPORT IN LOOP MOD MODULE NOT OF OR
PACKEDSET POINTER PROCEDURE QUALIFIED RECORD REM REPEAT RETRY RETURN SET THEN
TO TYPE UNTIL VAR WHILE WITH


(* number literals *)

CONST
  n = 1000; r = 1.234; x = 0FFFFH; c = 077C;


(* quoted literals *)

CONST
  apostrophe = "'"; doublequote = '"';
  single ='foobar'; double = "bazbam";


(* sample code *)

TYPE Foo = RECORD
  bar : Baz;
  bam : Boo
END; (* Foobar *)


VAR
  foo, bar, baz : CARDINAL;


IF foo > bar THEN
  baz := bam
ELSE
  baz := boo
END;


(* EOF *)
