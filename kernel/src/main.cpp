#include "../include/video.h"
#include "../include/shell.h"
#include "../include/ports.h"
#include "../include/keyboard.h"

extern "C" void kernel_main() 
{
    Video::initialize();
    
    // === КРИТИЧЕСКИ ВАЖНО: Настройка стека ===
    // Выделяем стек в верхних адресах (например, 0x90000)
    asm volatile (
        "mov $0x90000, %esp\n\t"
        "mov %esp, %ebp\n\t"
    );
    
    Shell::run();
}