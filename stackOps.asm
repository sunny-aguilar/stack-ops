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
	push	ebp				;push base pointer
	mov		ebp, esp		;set base pointer to ESP
	mov		eax, [ebp+16]	;access stack by with offsets to ebp
	add		eax, [ebp+12]	;add variable ebp+12
	mov		[ebx], eax		;store results of eax into ebx
	mov		eax, ebx
	call	WriteDec		
	pop		ebp

	ret
randomProc ENDP


END main
