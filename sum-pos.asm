;First find positive number
;then sum them 
;and also telll how many elemenets positive 
;1129
;Ahmad FAwad
include irvine32.inc  
.data  
array SWORD -3,-6,-1,-10,10,30,40,4  
count Dword 0
msgSum byte "Sum of positive number  ",0 
msgCount byte "Total positive number in given array  ",0

.code  
main proc  
call clrscr

mov eax,0
mov esi,offset array
mov ecx,lengthof array

next:
test word ptr [esi],8000h             ;Find positive number by test command 

pushfd

add esi,type array                   ;mov next element in array
popfd

jz sum                                ;;jump if zero flag  on

recall:
loop next 

jmp print

sum:
inc count                            ; ;This count can count positibe numbers
sub esi,type array                   ;go back element which check confition for
add ax,[esi]   
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