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

x	DWORD	175
y	DWORD	37
z	BYTE	"String text", 0

.code
main PROC
	push	x
	push	y
	push	OFFSET z
	call	randomProc

	exit; exit to operating system
main ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;randomProc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
randomProc PROC
	push	ebp
	mov		ebp, esp
	mov		eax, [ebp+8]
	call	WriteString
	pop		ebp

	ret
randomProc ENDP


END main
