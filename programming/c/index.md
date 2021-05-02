# C
Creator: Dennis Ritchie, Bell Labs, 1972
- Portable: available in many environments
source code file name: basename.c

## C standards
- ANSI C, ISO C
- C90
- C99
- C1x
- C11


## Compiling & Linking
The compiler converts your source code to an intermediate code, and linker combines this with other code (like other modules, library code) to produce the executable file (machine language).

intermediate files: object code files: machine language code (.o or .obj)
Object code file does not contain
1. startup code (code which acts as an interface between your program and the operation system).
2. code for library routines/functions from standard C library.

Linker: creates single executable file by combining your object code, the standard startup code for your system, and the library code.

For library code, the linker extracts only the code needed for the functions your use from the library.

## C Compilers
- Unix C compiler: cc
  cc file.c
- GNU Compiler Collection / GCC C Compiler: gcc
- LLVM Project: open source collection of compiler-related software: Clang compiler

gcc -v
cc -v
clang -v
gcc -o executableFileName file.c
gcc -std=c99 file.c      # C99 standard
gcc -std=c1x file.c      # C11 standard prior to acceptance
gcc -std=c11 file.c      # C11 standard after acceptance

- Windows
  GCC compiler is available via:
  - Cygwin: imitates Linux command-line environment
  - MinGW: runs in Windows Command-Prompt mode
Borland C++ Compiler 5.5 supports C90




getchar(); // pause until you press the Enter key

## C program
- #include <file.h>: preprocessor instructions
- main() is always the first function called
- functions: building blocks of C
- keywords, identifiers, operators, data


## Header files
Contains infomration used by the compiler to build the final executable program.
header: collection of information that goes at the top of a file
Actual code is in a library file of precompiled code, not in header file.

stdio.h: provides support for keyboard input and for displaying output like printf()

