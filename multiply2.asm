section .text
global _start

_start:
  push ebp
  mov ebp,esp
  sub esp,0xc
  mov DWORD [ebp-4],10
  mov DWORD [ebp-8],20
  mov DWORD [ebp-12],0
  mov eax,0
  mov ebx,[ebp-12]
loop:
  inc ecx
  add ebx,[ebp-4]
  cmp ecx,[ebp-8]
  jl loop
  mov [ebp-12],ebx

  mov eax,0x04
  mov ebx,0x01
  lea ecx, [ebp-12]
  mov edx,1
  int 0x80

  mov eax,1
  mov ebx,0
  int 0x80
