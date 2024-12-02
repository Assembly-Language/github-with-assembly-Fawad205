;First find Even number
;then sum them 
;and also telll how many elemenets Even 
;1129
;Ahmad FAwad
INCLUDE c:\Users\Ahmad Fawad\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc  
.data  
array SWORD 1,2,3,4,5,6,7,8,9
count Dword 0
msgSum byte "Sum of Even  number  ",0 
msgCount byte "Total Even number in given array  ",0

.code  
main proc  
call clrscr

mov eax,0
mov esi,offset array
mov ecx,lengthof array

next:
test word ptr [esi],1h            ;Find Even  number 

pushfd

add esi,type array                   ;mov next element in array
popfd

jz sum                               ;jump if zero

recall:
loop next 

jmp print

sum:
inc count
sub esi,type array                   ;go back element which check confition for
add ax,[esi]                         ;for add Even numbers
add esi,type array
jmp recall

print:
mov edx,offset msgSum
call writestring 
call writeint
call crlf
mov edx,offset msgCount
call writestring 
mov eax,0
mov eax,count
call writedec

exit  
main endp  
end main 