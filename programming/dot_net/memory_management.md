# memory managements

ways to manage memory
* Manual
* Automatic

## manual : human error
* space reclaimed twice (double deletion)
* reclaimed space acessed (dangling pointer)
* space never reclaimed (memory leak)
* space overwriten (memory corruption)

## automatic : machine ignorance
* space managed ineffectively (fragmentation)
* space not reclaimed immediately (pause time and deferral)
* overhead (time and space) incurred

## terms
* allocator
The entity responsible for heap memory management
Usually consists of at least two operations: allocate and release
Responsible for tracking allocated and free space
* collector
The entity responsible for automatic memory reclamation
Will usually work closely with the allocator
* mutator
The entity executing application code and mutates the object graph
* references
handles to blocks of allocated memory
* activation record / stack frame
the block of memory allocated for use by a block of code
* function / procedure / method
block of code for execution
* object
space allocated for language usage purposes, typically for an atomic entity as defined by the language
live objects are those stil in use
dead objects are those no longer used
* heap
complete amount of space in the process not dedicated to other use (stack, OS, CLR, JVM)
* page
an OS-determined "chunk" of the heap
* granule
smallest amount of memory allocable, usually a machine-sized word
* safety
no object still in use should go away
* throughput
number of ojbects that can be passed through the system
* speed and pause time
how long does it take to do a reclamation ?
* space overhead
above and beyond the actual allocated space
* completeness
do we get all the reclamation-eligible space ?
* scalability & portability

## tasks of memory management system
* allocation of free space
* reclamation of unused space
* tracking

kinds of storage
* static storage
all names are bound to memory at compile time (code, static, const, globals)
* stack storage
allocated for use by procedure call records (stack)
popped off on return from procedure
one stack per thread
* heap storage
rest of storage


## algoriths of automatic memory collections
* reference counting
each object will carry with it a reference count. Everytime somebody makes use of an object, reference count goes up and eveytime an object is no longer in use and released, the count goes down. When the count reaches 0, the object is eligible for reclamation and the object itself does it.

* mark-sweep
mark phase: identify objects still in use. Start from a known "root set" of references.
clean phase: reclaim which is not marked

Root sets:
- Thread stask
- Stack references
- Finalizable queue references

Objects must have a header (for the mark bit or flag)
For large heaps, mark and sweep phases can be excessibely long.

* mark-compact
mark phase
compact phase: rearrange the heap

* copying collectors
split the heap into half
allocate objects in first half
run mark phase, move objects in use to other half
blow away the first half

Allocation is Fast.
Complete elimination of fragmentation.
Loss of half of the available heap.

* generational collectors
assumptions:
- large heaps with lots of live objects take much longer to examine
- most objects are extremely short lived
- objects allocated together tend to live and die together

break heap into parts (generations) (Gen0, Gen1, Gen2)
Gen0: young generation, objects are allocates here
Gen1: objects that are alive, move them to Gen1
Objects that are not moved, sweep them

Older objects will nto be collected aggresively.


## .NET CLR - Generational GC
gen 0, gen 1, gen 2
Objects are allocated in gen0. Objects that survive successive mark phase are moved to gen 1 and then to gen 2. If an allocation request is not satisfied gen 0 collection, later gens are collected.

CLR self-tunes the size of these generations on the fly.

gen 3: Large objects heap (for objects above 85K bytes, manages separately via mark-sweep)


CLR GC Process
- Mark Phase
- Plan phase (simulates a compaction to determine the effective result. If productive the GC starts an actual compaction, other wise it sweeps)
- Relocation phase (find all references that point to objects that are in the generations being collected, so as to update the pointers appropriately)
- Compaction phase
- Sweep phase

## Source
Linkedin Learning, Ted Neward
www.memorymanagement.org
Garbase Collection (Wiley, Richard Jones, Rafeal Lins)
The Garbase Collection Handbook (Wiley, 2011, Richard Jones)
Book of the Runtime https://github.com/dotnet/coreclr/blob/master/Documentation/botr/garbage-collection.md


