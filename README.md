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

Мой билд:

<img width="371" height="274" alt="image" src="https://github.com/user-attachments/assets/f70c29ed-30fd-42d1-8c23-a84b7be50fdf" />
