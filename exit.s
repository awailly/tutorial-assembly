section .text:
  global _start

_start:
  mov eax, 1
  mov ebx, 200
  add ebx, eax
  int 0x80
