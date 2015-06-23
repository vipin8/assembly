section .text

global _start 
_start:
  push ebp
  mov ebp, esp
  push DWORD `\0`
  push DWORD `rld\n`  ;use back quote for escape sequence 
  push DWORD "o Wo"
  push DWORD "Hell" 
  
  mov eax, 0x04 
  mov ebx, 0x01
  lea ecx,[esp]
  mov edx,13
  int 0x80 

  mov eax, 0x01
  mov ebx, 0x00
  int 0x80 

section .data
 
