.globl _start

.text
_start:
  .intel_syntax noprefix
  mov eax, 1
  mov ebx, 200
  add ebx, eax
  int 0x80

.data
