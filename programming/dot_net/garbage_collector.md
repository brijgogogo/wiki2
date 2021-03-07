# Garbage Collector

* Mark and Sweep
%% Mark: mark live objects in Heap
%% Sweep: remove objects no longer referred
%% Compaction: move live objects together (and keep free memeory together) in Heap.

* GC.Collect()
%% runs GC
* GC.KeepAlive(obj)
%% keeps an object alive untill the call of this method
* GC.SuppressFinalize(this)
%% no need to call Finalizer

== GC Flavours ==
* Workstation GC
%% suitable for client apps
%% default for almost all .NET apps
%% GC runs on a single thread
  * Concurrent GC
  %% special GC thread
  %% runs concurrently with application threads, only short suspensions (of app threads)
  * Non-concurrent GC
  %% one of the app thread does the GC
  %% all threads are suspended during GC
* Server GC
%% one GC thread per logical processor, all working at once
%% separate heap area for each logical processor
%% Until CLR 4.5, server GC was non-concurrent

## Switching GC Flavours
<configuration>
  <runtime>
    <gcServer enabled="true|false" />
    <gcConcurrent enabled="true|false" />
  </runtime>
</configuration>
%% can't switch flavors at runtime, but can query using GCSettings class
%% use Visual Studio > Analyze > Concurrency Visualiztion to analyze impact

## Generational Garbage Collection
%% A full GC is expensive and inefficient.
%% Divide the heap into regions and perform small collections often
%% frequently-touched regions should have many dead objects
%% New obects die fast, old objects stay alive
* .NET Generations
%% Three heap regions (Generations)
%% Gen 0: where objects are born
%% Gen 1: nursery
%% Gen 2: tenured old objects that are likely to survive for a long time
%% GC will try to perform lots of lots fo generation 0
%% GC will touch Gen 2 only infrequently
%% Survivors from Gen 0 are promoted to Gen 1, and so on
%% Gen2 does not have size limit
%% Gen 0 is small only few MBs (so how large objects are allocated in Gen0 ?)
%% Large objects are stored in a separate heap region (LOH)
* Large Object Heap (LOH)
%% larger than 85000 bytes  or array of >1000 doubles
%% GC does not compact LOH, and it may cause fragmentation
%% LOH are considered part of Gen 2
%% LOH fragmentation leads to waste of memory
%% .NET 4.5.1, GCSettings.LargeObjectHeapCompactionMode = GCLargeObjectHeapCompactionMode.CompactOnce; GC.Collect();
* Small Object Heap (SOH)

## Background and Foreground GC
%% GC runs in background thread. But when a app thread tries to
%% allocate object in Gen 0 region of heap, and it is full. GC
%% starts a foreground GC thread to run on Gen 0

## Finalization
%% GC frees up memory, but not resources (Sockets, file handles, database connections)
%% .NET is undeterministic about when an object will be unallocated (unlike C++)
%% CLR runs a finalizer after the object becomes unreachable
%% ~ClassName() (Finalizer)

* Finalization mechanism
%% 1. Finalization queue for potentially "finalizable" objects
%% 2. Identifying candidates for finalization
%% 3. selecting a thread for finalization: the finalizer method
%% 4. F-reachable queue for finalization candidates
%% 5. Objects removed from f-reachable queue can be GG'd

* Finalization Problems
%% 1. if an object has finalizer, it extends object lifetime by at lease
%%    one GC cyle (objects that might die in Gen 0, will move to Gen 1 and so on)
%% 2. The f-reachable queue might fill up faster than the finalizer thread can
%%    drain it (if finalizer takes time like to commit a transaction)
%%    This can be addressed by deterministic finalization (Dispose)
%% 3. While the Finalizer is getting called, instance method could be getting executed

## Dispose Pattern
%% stay away from finalization and use deterministic cleanup (like a method to cleanup)
%% You're responsible for resource management
%% Dispose Pattern: IDisposable (you call Disppose method yourself)
%% Combine Dispose Pattern and Finalizer

## Resurrection and Object Pooling
%% Bring back object back to life from the finalizer
%% Can be used to implement object pool
%% class DatabaseConnection {
%%    ~DatabaseConnection() {
%%        ConnectionPool.ReturnToPool(this);
%%        GC.ReRegisterForFinalize(this); // puts back of finalization queue (needed so that GC doesn't remove it from memory)
%%    }
%% }

:.net:

