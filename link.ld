ENTRY(kernel_main)

SECTIONS {
    . = 0x100000; /* 1MB */

    .text : {
        *(.text)
    }

    .rodata : {
        *(.rodata*)
    }

    .data : {
        *(.data)
    }

    .bss : {
        *(.bss)
        *(COMMON)
    }

    /* === СТЕК === */
    . = 0x90000; /* Стек в 576KB */
    _stack_top = .;
    . = . + 0x4000; /* 16KB стека */
    _stack_bottom = .;
}