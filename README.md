tutorial-assembly
=================

Assembly tutorial for virtualization/OS lectures

Nasm
----

nasm -f elf64 file.s
ld -s -o file file.o
./file

GNU as
------

as file.s -o file.o
ld -s -o file file.o
./file

FAQ
===

How can I display the return value ?
------------------------------------

$ ./program
$ echo $?
