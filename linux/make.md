# GNU Make
Make dates from 1976, and has become almost universal as a tool for building large software projects,

Make is a versatile tool that can be used with any language that supports a command-line compiler.

Make is a special language specifically for writing project builds from source.

Builds scripted using GNU Make are much more maintainable, configurable and compact than builds scripted using shell scripting.

## Dependencies
Central to the operation of GNU Make is the concept of a dependency. When we compile a program, we typically need one or more source files, and possibly other resources as well. The specific files that we need to carry out a particular build are known as the dependencies of that build.

## Makefile
In order to script a GNU Make build, we need a special file called a makefile, which is a bit like a script for running the build. Makefiles can have one of three names: Makefile, MakeFile or GNUMakefile. We recommend that you call your Makefiles pëŏĕǙŒĕ , with a capital M, in order to make them appear higher up in search results.

We run a makefule using:
$ make

If we have a makefile that doesn’t have one of the three special names, we can run it using:
$ make -f my_oddly_name_makefile.

Inside the makefile we put our script.

The file consists of a series of rules, which are usually files that we need to build in some way. The first rule is the main rule, the program that we eventually want to create. Each rule is followed by a colon and then a list of the dependencies required to complete that file.

e.g.

player : player.o screen.o dvd_read.o

player.o : player.c player.h screen.h dvd_read.h

screen.o : screen.c player.h

dvd_read.o : dvd_read.o player.h

## Recipe
Immediately below each rule line is a tab-indented line called a recipe, which is the shell command that we use to build the rule. When Make tries to build the program player , it will run that command.

e.g.

player : player.o screen.o dvd_read.o
  gcc -o player player.o screen.o dvd_read.o
player.o : player.c player.h screen.h dvd_read.h
  gcc -c player.c
screen.o : screen.c player.h
  gcc -c screen.c
dvd_read.o : dvd_read.o player.h
  gcc -c dvd_read.c
Make, before trying to build the player program, will make sure that the .o dependencies have been created first. If they haven’t, or if they have been modified, then Make will look for an appropriate rule in order to create them.

Make will only recompile a file if it, or one of its dependencies, has been modified since the last build. Make works recursively: when it reaches a rule, it first tries to resolve all its dependencies before carrying out the rule itself. Make runs over all the dependencies, deciding whether each one is up to date.

There are two types of dependencies. The first is a dependency that has no attached rule, typically some kind of source file. If Make encounters such a dependency, then it will check to see whether the timestamp on that file is more recent than the timestamp on the file that we are trying to build. If it is, this indicates that the source file has been modified more recently than the target file, and in such a situation Make will decide that it needs to run the recipe for the target file in order to incorporate the changes. The second type of dependency is a rule that occurs somewhere else in the Makefile. For example, the .o dependencies for the player rule all have their own rules further down. In that case, Make recursively processes each of these rules before processing the target rule. If none of the rule dependencies require recompilation and if none of the source files have been modified, Make will not recompile the target. Otherwise, it will run the recipe for the target rule in order to create the file.


