Обучающий проект: 
Минимальное ядро ОС в защищённом режиме на C++ и ассемблере (NASM). Демонстрирует работу с VGA, клавиатурой, портами и базовым шеллом

Команды шелла: 
help, clear, echo, color, reboot

Эмуляция: 
QEMU

Сборка и запуск:
nasm -f elf32 boot.asm -o boot.o
g++ -m32 -ffreestanding -c *.cpp
ld -m elf_i386 -T linker.ld -o kernel.bin *.o
qemu-system-i386 -kernel kernel.bin
