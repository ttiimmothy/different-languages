section .data
  ; Define data variables here

section .text
  global _start

_start:
  ; Your assembly code goes here

  ; Exit the program (example for Linux)
  mov eax, 1         ; syscall number for exit
  mov ebx, 0         ; exit status
  int 0x80           ; interrupt to invoke syscall

section .bss
  ; Define uninitialized data variables (if needed)
