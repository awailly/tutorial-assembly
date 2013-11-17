tutorial-assembly
=================

Assembly tutorial for virtualization/OS lectures

Nasm
----

Command lines

    nasm -f elf64 file.s
    ld -s -o file file.o
    ./file

GNU as
------

Command lines

    as file.s -o file.o
    ld -s -o file file.o
    ./file

FAQ
===

How can I display the return value ?
------------------------------------

You can display the return value with

    $ ./program
    $ echo $?
