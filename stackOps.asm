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

x	DWORD	10
y	DWORD	20
z	DWORD	?

.code
main PROC
	push	x
	push	y
	call	randomProc

	exit; exit to operating system
main ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;randomProc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
randomProc PROC
	push	ebp
	mov		ebp, esp
	mov		eax, [ebp+16]
	call	WriteDec

	ret
randomProc ENDP


END main
