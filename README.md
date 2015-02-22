# tutorial-assembly

Assembly tutorial for virtualization/OS lectures

## Nasm

### Linux

    nasm -f elf64 file.s
    ld -s -o file file.o
    ./file

### Windows

For Windows, you can use `alink`, `golink` or `ld`:

    nasm -f win32 "tutorial-assembly\shellcode_kernel_win.s"
    alink -entry _start -subsys con -oPE "tutorial-assembly\shellcode_kernel_win.obj"

## GNU as

### 64bits

    as file.s -o file.o
    ld -s -o file file.o
    ./file

### 32bits

    as --32 shell_x86.s -o shell_x86.o
    ld -m elf_i386 -s -o shell_x86 shell_x86.o

## Extracting a shellcode

### Compile bytecode

The previous section created a complete executable. To assemble only the instructon, remove the format and get the C array with

    xxd -i file.o

### Test the shellcode

You can execute the assembly instructions with a small snippet calling the C array.

    gcc -z execstack skeleton.c -o skeleton

# FAQ

## How can I display the return value ?

You can display the return value with

    $ ./program
    $ echo $?
