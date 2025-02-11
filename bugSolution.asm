mov ecx, [some_ecx_variable] ; Get the index value from some variable
mov edi, [some_edi_variable] ; Get a pointer to memory location
; Check for out-of-bounds access before proceeding.
mov eax, ecx
cmp eax, array_size
jge handle_error ; Jump to error handling if ecx exceeds array size
mov eax, [ebx+ecx*4] ; Access the array element safely
mov [edi+eax*4], 0 ; Now we access memory safely. Additional checks may be needed for edi.
; ...Rest of your code

handle_error:
; Handle the error appropriately, e.g., print an error message, terminate the program, etc.