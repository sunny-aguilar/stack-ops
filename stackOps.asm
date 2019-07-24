TITLE Program Template(template.asm)

; Author:
; Last Modified :
; OSU email address :
; Course number / section:
; Assignment Number :
; Due Date :
; Description:

INCLUDE Irvine32.inc

.data

val_1	DWORD	10
val_2	DWORD	20

.code
main PROC
	call	randomProc

	call	WriteDec

	exit; exit to operating system
main ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;randomProc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
randomProc PROC

	ret 4
randomProc ENDP


END main
