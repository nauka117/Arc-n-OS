.SECT   .TEXT

        MOV     SI, arr          ! index
        MOV     CX, end - arr    ! len
        SHR     CX, 1            ! div 2

s_loop:
        MOV     BX, (SI)   ! BX = element of arr
        MOV     DX, BX           ! copy to DX
        SHR     DX, 1            ! //2
        SHL     DX, 1            ! *2
        CMP     BX, DX           
        JNE     adds       	 ! if BX == DX: add

        JMP     next_el   

adds:
        ADD     AX, BX           

next_el:
        ADD     SI, 2            ! forward
        LOOP    s_loop           ! repeat while !end

        !res in AX

.SECT   .DATA
arr:    .WORD   2, 5, 3, 8, 1
end:    .BYTE   0

.SECT   .BSS
