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
list	DWORD 100 DUP(?)

.code
main PROC
	mov		eax, 10
	mov		edi, 0
	mov		list[edi], eax
	add		edi, 4
	mov		list[edi], ebx


	;push	x
	;push	y
	;push	OFFSET z
	;call	randomProc

	exit; exit to operating system
main ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;randomProc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
randomProc PROC
	push	ebp				;push base pointer
	mov		ebp, esp		;set base pointer to ESP
	mov		eax, [ebp+16]	;access stack by with offsets to ebp x
	add		eax, [ebp+12]	;add variable ebp+12 y
	mov		[ebx], eax		;store results of eax into ebx
	mov		eax, [ebx]
	call	WriteDec		;display result in ebx
	pop		ebp

	ret		12
randomProc ENDP


END main
