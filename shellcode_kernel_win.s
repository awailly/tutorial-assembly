; [BITS32]

; Skeleton for retrieving kernel32.dll on Win
; 
; Assembler: NASM
; OS: Windows

  bits 32
;  extern ExitProcess

section .text
  global _start

_start:
  xor ebx, ebx
  mov ebx, [fs:0x30]
  mov ebx, [ebx+0x0c]
  mov ebx, [ebx+0x14]
  mov ebx, [ebx]
  mov ebx, [ebx]
  mov ebx, [ebx+0x10]

;  mov ecx, 0
;  call    ExitProcess
