.SECT .TEXT
        MOV     AX, 7          ! AX = x = 7
        MOV     BX, AX         ! Save x in BX

        ! Calculate x^2
        MUL     AX             ! AX = x * x (now AX = x^2)

        ! Calculate 3 * x^2
        MOV     CX, AX         ! CX = x^2
        ADD     CX, CX         ! CX = 2 * x^2
        ADD     CX, AX         ! CX = 3 * x^2

        ! Calculate x^4
        MOV     DX, AX         ! DX = x^2
        MUL     BX             ! AX = x^2 * x^2 (now AX = x^4)

        ! Calculate 2 * x^4
        ADD     AX, AX         ! AX = 2 * x^4

        ! Subtract 3 * x^2
        SUB     AX, CX         ! AX = 2 * x^4 - 3 * x^2

        ! Add x
        ADD     AX, BX         ! AX = 2 * x^4 - 3 * x^2 + x

        ! Subtract 5
        SUB     AX, 5          ! AX = 2 * x^4 - 3 * x^2 + x - 5

.SECT .DATA
        x:      .WORD   7      ! Value of x

.SECT .BSS

