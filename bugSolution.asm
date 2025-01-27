mov ecx, [some_array_length] ; Get the array length
; Check bounds
cmp ecx, 0
je error_handling
mov eax, [ebx + ecx*4 + 0x10] ; Access memory only within bounds
; ...process the data...
; Set edi to a valid address before the memory write.
mov edi, [valid_memory_location]
mov [edi + 0x20], eax ; Write the data to the valid location
; ...rest of the code...
error_handling:
; Handle out-of-bounds error, or display error message and terminate
jmp terminate