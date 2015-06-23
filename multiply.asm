; main() {
; 
; int a,b,c;
; a = 10;
; b= 20;
; c = mul(a,b);
; return c;


section .text

global _start

_start:
  push ebp
  push ebp,esp 
  sub esp,0x0c ;space for local var
  mov DWORD [ebp -4],10
  mov DWORD [ebp -8], 20
  push DWORD [ebp -8]
  push DWORD [ebp -4]
  call mult
  mov DWORD [ebp -12], eax
  mov eax,[ebp-12]
  
  mov eax,1
  mov ebx,[ebp-12]
  int 0x080
 
  7*8 
  
mult:
  push ebp 
  push ebp,esp 
  sub esp,4
  mov eax, [ebp+8]
repeat:
  add eax,[ebp+12]
  dec 
    
  
