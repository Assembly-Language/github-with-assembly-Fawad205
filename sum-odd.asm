;First find odd number
;then sum them 
;and also telll how many elemenets is odd 
;1129
;Ahmad FAwad
include irvine32.inc  
.data  
array SWORD 1,2,3,4,5,6,7,8,9
count Dword 0
msgSum byte "Sum of odd  number  ",0 
msgCount byte "Total Odd number in given array  ",0

.code  
main proc  
call clrscr

mov eax,0
mov esi,offset array
mov ecx,lengthof array

next:
test word ptr [esi],1h            ;Find odd  number by comapre 1 becaue lest bit alway 1 in odd

pushfd

add esi,type array                   ;mov next element in array
popfd

jnz sum  

recall:
loop next 

jmp print

sum:
inc count
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