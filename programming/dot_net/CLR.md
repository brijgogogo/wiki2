# CLR

Common Language Runtime (CLR) provides runtime features like automatic memory management, exception handling, etc.

CLR is language-neutral. C# is one of several `managed languages` that get compiled into managed code. Managed code is represented in `Intermediate Language` or IL. The CLR converts the IL into native code of the machine, such as X86 or X64, usually just prior to execution. This is referred to as Just-in-Time (`JIT`) compilation. Ahead-of-time compilation is also available to improve startup time.


The container for managed code is called an `assembly` or `portable executable`. An assembly can be an executable file (.exe) or a library (.dll), and contains not only IL, but type information (metadata). The presence of metadata allows assemblies to reference types in other assemblies without needing additional files.

A program can query its own metadata (`reflection`) and even generate new IL at runtime (`reflection.emit`).

A compiler for a .NET programming language generates Intermediate Language (IL) code. The IL code looks like object-oriented machine code and can be checked by using the tool ildasm.exe to open DLL or EXE files that contain .NET code. The CLR contains a just-in-time (JIT) compiler that generates native code out of the IL code when the program starts to run.

IL code is also known as  managed code.

Parts of CLR:
* Garbage Collector (GC)
* Code access security (what code is allowed to do)
* debugger
* threading facility: create threads on the underlying platform

Tools for IL:
* ildasm
* ILSpy
* dotPeek (JetBrains)
* Reflector (Red Gate)

