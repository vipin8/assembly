section .text
;This is the start label 
global _start

_start:

push ebp 
mov ebp, esp 
sub esp,0x0c
;// when you move data to memory specify size like DWORD etc
;// if moving to a register not required if it is default size of DWORD for 32 bit register
mov DWORD [ebp-4], 10
mov DWORD [ebp-8], 20
;// push args in reverse order first b then a
push DWORD [ebp -8]
push DWORD [ebp -4]
call add 
mov DWORD [ebp -12] , eax ; return value is in eax move it to c 
mov eax, [ebp-12] 
call _exit 

_exit:
mov eax,1
mov ebx,[ebp-12]
int 0x080
;move esp, ebp
;pop ebp
;ret

add:

push ebp
mov ebp, esp
sub esp,4
mov eax, [ebp+8]
add eax, [ebp+12]
mov[ebp-4], eax
mov eax,[ebp-4]
mov esp,ebp
pop ebp
ret

